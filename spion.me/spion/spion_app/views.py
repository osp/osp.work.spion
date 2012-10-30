"""
spion.views
"""

from django.http import HttpResponse, Http404
from django.shortcuts import render_to_response
from django.template import RequestContext

from spion_app.models import (NewsItem, UserProfile, User, Publication, Organisation, ResearchGroup, WorkPackage, Partner)

from datetime import datetime

#from analytics.models import Visitors
#from spion.settings import PIWIK_PATH

def index(request):
    #v = Visitors()
    #visits = v.get()
    tpl_params = {}
    tpl_params['news'] = NewsItem.objects.filter(publish_start__lte=datetime.today(),
                                                publish_end__gte=datetime.today())
    tpl_params['profiles'] = UserProfile.objects.all()
    #tpl_params['visits'] = visits
    #tpl_params['PIWIK_PATH'] = PIWIK_PATH
    return render_to_response("home.html", tpl_params, context_instance = RequestContext(request))
    
def profiles(request):
    tpl_params = {}
    tpl_params['profiles'] = UserProfile.objects.all()
    return render_to_response("profiles.html", tpl_params, context_instance = RequestContext(request))
    
def profile(request, uid):  
    tpl_params = {}
    user_profile = UserProfile.objects.get(pk=uid)
    tpl_params['user'] = user_profile.user
    tpl_params['bio'] = user_profile.bio
    tpl_params['publications'] = user_profile.publications.all()
    return render_to_response("profile.html", tpl_params, context_instance = RequestContext(request))

def publications(request):
    tpl_params = {}
    tpl_params['publications'] = Publication.objects.all()
    return render_to_response("publications.html", tpl_params, context_instance = RequestContext(request))

def publication(request, pid):
    tpl_params = {}
    tpl_params['publication'] = Publication.objects.get(pk=pid)
    return render_to_response("publication.html", tpl_params, context_instance = RequestContext(request))
    
    
def work_packages(request):
    tpl_params = {}
    tpl_params['work_packages'] = WorkPackage.objects.all()
    return render_to_response("work_packages.html", tpl_params, context_instance = RequestContext(request))
    
def work_package(request, wid):
    tpl_params = {}
    tpl_params['work_package'] = WorkPackage.objects.get(pk=wid)
    return render_to_response("work_package.html", tpl_params, context_instance = RequestContext(request))
    
def partners(request):
    tpl_params = {}
    tpl_params['partners'] = Partner.objects.all()
    return render_to_response("partners.html", tpl_params, context_instance = RequestContext(request))
    
def partner(request, pid):
    tpl_params = {}
    tpl_params['partner'] = Partner.objects.get(pk=pid)
    return render_to_response("partner.html", tpl_params, context_instance = RequestContext(request))
    
    
    
    
    
    