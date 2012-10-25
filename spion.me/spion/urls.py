from django.conf.urls.defaults import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('spion.spion_app.views',
    url(r'^$', 'index', name='home'),
    url(r'^publications/$', 'publications'),
    url(r'^publication/(?P<pid>\d+)$', 'publication'),
    url(r'^profiles/$', 'profiles'),
    url(r'^profile/(?P<uid>\d+)/$', 'profile'),
    url(r'^admin/', include(admin.site.urls)),
)
