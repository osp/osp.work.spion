"""
spion.views
"""

from django.http import HttpResponse, Http404
from django.shortcuts import render_to_response
from django.template import RequestContext

from spion_app.models import (NewsItem, UserProfile, User, Publication, Organisation, ResearchGroup, WorkPackage, Partner, SpionProject)

from datetime import datetime

from analytics.models import Visitors
from spion.settings import PIWIK_PATH

def visitor_context(request):
    """
    This template processor adds visitor info using the Piwik API.
    It calls all visits that include the currently requested page.
    Add this function to TEMPLATE_CONTEXT_PROCESSORS in settings.py as
    "spion_app.views.visitor_context"
    
    TODO: make an exception for the homepage, so that the homepage shows
    all the visits.
    """
    page_url = request.build_absolute_uri()
    v = Visitors(page_url)
    visits = v.get()
    return { 'visits' : visits, 'PIWIK_PATH' : PIWIK_PATH }

def index(request):
    tpl_params = {}
    tpl_params['news'] = NewsItem.objects.filter(publish_start__lte=datetime.today(),
                                                publish_end__gte=datetime.today())
                                                
    tpl_params['project'] = SpionProject.objects.all()[0]
    tpl_params['profiles'] = UserProfile.objects.all()
    tpl_params['publications'] = Publication.objects.filter(pub_type__name='deliverable')
    tpl_params['work_packages'] = WorkPackage.objects.all()
    return render_to_response("home.html", tpl_params, context_instance = RequestContext(request))
    
def profiles(request):
    tpl_params = {}
    tpl_params['profiles'] = UserProfile.objects.all()
    return render_to_response("profiles.html", tpl_params, context_instance = RequestContext(request))
    
def profile(request, uid):  
    tpl_params = {}
    user_profile = UserProfile.objects.get(pk=uid)
    tpl_params['profile'] = user_profile
    tpl_params['user'] = user_profile.user
    tpl_params['bio'] = user_profile.bio
    tpl_params['work_package'] = user_profile.work_package
    tpl_params['publications'] = user_profile.publications.all()
    return render_to_response("profile.html", tpl_params, context_instance = RequestContext(request))

def publications(request):
    tpl_params = {}
    tpl_params['publications'] = Publication.objects.all()
    return render_to_response("publications.html", tpl_params, context_instance = RequestContext(request))

def publication(request, pid):
    tpl_params = {}
    pub = Publication.objects.get(pk=pid)
    tpl_params['publication'] = pub
    tpl_params['authors'] = pub.user.all()
    return render_to_response("publication.html", tpl_params, context_instance = RequestContext(request))

def work_packages(request):
    tpl_params = {}
    tpl_params['work_packages'] = WorkPackage.objects.all()
    return render_to_response("work_packages.html", tpl_params, context_instance = RequestContext(request))
    
def work_package(request, wid):
    tpl_params = {}
    wp = WorkPackage.objects.get(pk=wid)
    tpl_params['work_package'] = wp
    tpl_params['publications'] = []
    pub_ids = []
    for rs in wp.researchers.all():
        for p in rs.publications.all():
            if p.id not in pub_ids:
                pub_ids.append(p.id)
                tpl_params['publications'].append(p)
    return render_to_response("work_package.html", tpl_params, context_instance = RequestContext(request))
    
def partners(request):
    tpl_params = {}
    tpl_params['partners'] = Partner.objects.all()
    return render_to_response("partners.html", tpl_params, context_instance = RequestContext(request))
    
def partner(request, pid):
    tpl_params = {}
    tpl_params['partner'] = Partner.objects.get(pk=pid)
    return render_to_response("partner.html", tpl_params, context_instance = RequestContext(request))

def newsitems(request):
    tpl_params = {}
    tpl_params['newsitems'] = NewsItem.objects.all()
    return render_to_response("newsitems.html", tpl_params, context_instance = RequestContext(request))

def newsitem(request, nid):
    tpl_params = {}
    tpl_params['newsitem'] = NewsItem.objects.get(pk=nid)
    return render_to_response("newsitem.html", tpl_params, context_instance = RequestContext(request))


    
