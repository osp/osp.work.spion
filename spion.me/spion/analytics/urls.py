from django.conf.urls.defaults import patterns, include, url

urlpatterns = patterns('analytics.views',
    url(r'^visitors/$', 'visitors'),
)
