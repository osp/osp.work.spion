from django.conf.urls.defaults import patterns, include, url

from django.contrib import admin
import settings
admin.autodiscover()

urlpatterns = patterns('',
    (r'^', include('spion_app.urls')),
    (r'^spy-kit/', include('spy_kit.urls')),
    url(r'^admin/', include(admin.site.urls)),
)

if settings.DEBUG:
    urlpatterns += patterns('',
        url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {
            'document_root': settings.MEDIA_ROOT,
        }),
   )
