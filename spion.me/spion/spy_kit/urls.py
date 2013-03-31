# -*- coding: utf-8 -*-

from django.conf.urls.defaults import patterns, include, url
from django.conf.urls.i18n import i18n_patterns

urlpatterns = patterns('spion.spy_kit.views',
    url(r'^$', 'index', name='kit_index'),
    url(r'^(?P<slug>[\w-]+)$', 'single', name='kit_single'),
)
