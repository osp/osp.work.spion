"""
spion.views
"""

from django.http import HttpResponse, Http404
from django.shortcuts import render_to_response
from django.template import RequestContext

from spion.models import (NewsItem,UserProfile)


def index(req):
    tpl_params = {}
    tpl_params['news'] = NewsItem.objects.all()
    tpl_params['profiles'] = UserProfile.objects.all()
    render_to_response("home.html", tpl_params, context_instance = RequestContext(request))


