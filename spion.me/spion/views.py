from django.shortcuts import render_to_response
from django.template import RequestContext

def home(request):
    return render_to_response('base.html',
            { 'data' : 'foo' },
        context_instance=RequestContext(request))