"""
spion.views
"""

from django.http import HttpResponse, Http404
from django.shortcuts import render_to_response
from django.template import RequestContext

from spion_app.models import (NewsItem,UserProfile)

from analytics.models import Visitors
from spion.settings import PIWIK_PATH

def index(request):
    v = Visitors()
    visits = v.get()
    tpl_params = {}
    tpl_params['news'] = NewsItem.objects.all()
    tpl_params['profiles'] = UserProfile.objects.all()
    tpl_params['visits'] = visits
    tpl_params['PIWIK_PATH'] = PIWIK_PATH
    return render_to_response("home.html", tpl_params, context_instance = RequestContext(request))


