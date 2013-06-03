from django.conf.urls.defaults import patterns, include, url
#from django.views.generic.simple import redirect_to
from django.views.generic import RedirectView

urlpatterns = patterns('spion.spion_app.views',
    url(r'^$', 'index', name='home'),
    url(r'^feedback$', RedirectView.as_view(url='https://parvati.ugent.be/limesurvey192/index.php?sid=47147&lang=nl') ),
    url(r'^about/$', 'about'),
    url(r'^publications/$', 'publications'),
    url(r'^publications/(?P<orderby>\w+)$', 'publications'),
    url(r'^publication/(?P<pslug>[\w-]+)$', 'publication'),
    url(r'^profiles/$', 'profiles'),
    url(r'^profile/(?P<uslug>[\w-]+)$', 'profile'),
    url(r'^announcements/$', 'newsitems'),
    url(r'^announcement/(?P<nslug>[\w-]+)$', 'newsitem'),
    url(r'^workpackages/$', 'work_packages'),
    url(r'^workpackage/(?P<wslug>[\w-]+)$', 'work_package'),
    url(r'^partners/$', 'partners'),
    url(r'^partner/(?P<pid>\d+)$', 'partner'),
)
