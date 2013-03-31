# -*- coding: utf-8 -*-
"""
spy_kit.views
"""

from django.http import HttpResponse, Http404
from django.shortcuts import render_to_response
from django.template import RequestContext

from spion.spy_kit.models import SpyKit

def index(request):
    objects = SpyKit.objects.all()
    tpl_params = {}
    tpl_params['title'] = 'SPY KIT'
    return render_to_response("spy_index.html", tpl_params, context_instance = RequestContext(request))
    
def single(request, slug):
    #page = SpyKit.objects.get(slug=slug)
    tpl_params = {}
    #tpl_params['title'] = 'SPY KIT — ' + page.title
    #tpl_params['page'] = page
    template = 'spy_single.html'
    #if page.template:
    #    template = page.template
    return render_to_response(template, tpl_params, context_instance = RequestContext(request))
