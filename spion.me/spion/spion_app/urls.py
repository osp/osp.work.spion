from django.conf.urls.defaults import patterns, include, url

urlpatterns = patterns('spion.spion_app.views',
    url(r'^$', 'index', name='home'),
    url(r'^publications/$', 'publications'),
    url(r'^publication/(?P<pid>\d+)$', 'publication'),
    url(r'^profiles/$', 'profiles'),
    url(r'^profile/(?P<uid>\d+)/$', 'profile'),
)
