"""
spion.views
"""

from django.http import HttpResponse, Http404
from django.shortcuts import render_to_response
from django.template import RequestContext

from spion_app.models import (NewsItem, UserProfile, User, Publication, PublicationType, Organisation, ResearchGroup, WorkPackage, Partner, SpionProject)

from datetime import datetime

from analytics.models import Visitors
from spion.settings import (PIWIK_PATH,PIWIK_SITE_ID)

def index(request):
    tpl_params = {}
    tpl_params['news'] = NewsItem.objects.filter(publish_start__lte=datetime.today(),
                                                publish_end__gte=datetime.today())
                                                
    project = SpionProject.objects.all()
    tpl_params['project'] = {}
    for p in project:
        tpl_params['project'][p.title] = p.description
    
    #tpl_params['profiles'] = UserProfile.objects.all()
    #tpl_params['publications'] = Publication.objects.filter(pub_type__name='deliverable')
    #tpl_params['work_packages'] = WorkPackage.objects.all()
    return render_to_response("home.html", tpl_params, context_instance = RequestContext(request))
    
def profiles(request):
    tpl_params = {}
    tpl_params['title'] = 'Researchers'
    tpl_params['work_packages'] = WorkPackage.objects.all()
    tpl_params['profiles'] = UserProfile.objects.all()
    return render_to_response("profiles.html", tpl_params, context_instance = RequestContext(request))
    
def profile(request, uslug):  
    tpl_params = {}
    user_profile = UserProfile.objects.get(slug=uslug)
    tpl_params['profile'] = user_profile
    tpl_params['user'] = user_profile.user
    tpl_params['bio'] = user_profile.bio
    tpl_params['work_package'] = user_profile.work_package
    tpl_params['publications'] = user_profile.publications()
    tpl_params['title'] = tpl_params['user'].get_full_name()
    return render_to_response("profile.html", tpl_params, context_instance = RequestContext(request))

def publications(request, orderby='pub_type'):
    tpl_params = {}
    tpl_params['publications'] = Publication.objects.all().order_by(orderby, '-published')
    tpl_params['title'] = 'Publications'
    tpl_params['order_by'] = orderby
    tpl_params['ordered'] = []
    for pt in PublicationType.objects.all():
        pubs = []
        for p in tpl_params['publications']:
            if p.pub_type.id == pt.id:
                pubs.append(p)
        tpl_params['ordered'].append({'type':pt.name, 'p':pubs})
    
    return render_to_response("publications.html", tpl_params, context_instance = RequestContext(request))

def publication(request, pslug):
    tpl_params = {}
    pub = Publication.objects.get(slug=pslug)
    tpl_params['publication'] = pub
    #tpl_params['authors'] = pub.user.all()
    tpl_params['title'] = pub.title
    return render_to_response("publication.html", tpl_params, context_instance = RequestContext(request))

def work_packages(request):
    tpl_params = {}
    tpl_params['work_packages'] = WorkPackage.objects.all()
    tpl_params['title'] = 'Workpackages'
    return render_to_response("work_packages.html", tpl_params, context_instance = RequestContext(request))
    
def work_package(request, wslug):
    tpl_params = {}
    wp = WorkPackage.objects.get(slug=wslug)
    tpl_params['work_package'] = wp
    tpl_params['publications'] = []
    tpl_params['title'] = wp.title
    pub_ids = []
    for rs in wp.researchers.all():
        for p in rs.publications.all():
            if p.id not in pub_ids:
                pub_ids.append(p.id)
                tpl_params['publications'].append(p)
    return render_to_response("work_package.html", tpl_params, context_instance = RequestContext(request))
    
def about(request):
    tpl_params = {}
    tpl_params['long_description'] = SpionProject.objects.get(title="long_description")
    #tpl_params['project'] = SpionProject.objects.all()[0]
    tpl_params['organisations'] = Organisation.objects.all()
    tpl_params['work_packages'] = WorkPackage.objects.all()
    tpl_params['partners'] = Partner.objects.all()
    tpl_params['title'] = 'about'
    return render_to_response("about.html", tpl_params, context_instance = RequestContext(request))
  
def partners(request):
    tpl_params = {}
    tpl_params['partners'] = Partner.objects.all()
    tpl_params['title'] = 'Advisory Group'
    return render_to_response("partners.html", tpl_params, context_instance = RequestContext(request))
    
def partner(request, pid):
    tpl_params = {}
    tpl_params['partner'] = Partner.objects.get(pk=pid)
    tpl_params['title'] = tpl_params['partner'].title
    return render_to_response("partner.html", tpl_params, context_instance = RequestContext(request))

def newsitems(request):
    tpl_params = {}
    tpl_params['newsitems'] = NewsItem.objects.all()
    tpl_params['title'] = 'News'
    return render_to_response("newsitems.html", tpl_params, context_instance = RequestContext(request))

def newsitem(request, nslug):
    tpl_params = {}
    tpl_params['newsitem'] = NewsItem.objects.get(slug=nslug)
    tpl_params['title'] = tpl_params['newsitem'].header
    return render_to_response("newsitem.html", tpl_params, context_instance = RequestContext(request))


    
