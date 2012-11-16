from django.shortcuts import render_to_response
from django.template import RequestContext

from analytics.models import Visitors
from spion.settings import PIWIK_PATH

def visitors(request):
    v = Visitors()
    visits = v.get()
    return render_to_response('visitors.html',
            { 'visits' : visits,
              'PIWIK_PATH' : PIWIK_PATH },
            context_instance=RequestContext(request))