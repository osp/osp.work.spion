from django.conf.urls.defaults import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('spion.spion_app.views',
    url(r'^$', 'index', name='home'),
    url(r'^profile/(?P<uid>\d+)/$', 'profile'),
    url(r'^admin/', include(admin.site.urls)),
)
