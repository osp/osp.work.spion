# -*- coding: utf-8 -*-

from django.db import models

class SpyKit(models.Model):
    def foo(self):
        return "bar"

"""
class SpyKit(models.Model):
    slug = models.SlugField(max_length=255, editable=False)
    
    title = models.CharField(max_length=512)
    body = models.TextField()
    template = models.CharField(max_length=512, blank=True)
    
    def save(self, force_insert=False, force_update=False, *args, **kwargs):
        # Automatically generate the slug from the title on save
        self.slug = slugify(self.title)
        super(SpyKit, self).save(force_insert, force_update) 
"""