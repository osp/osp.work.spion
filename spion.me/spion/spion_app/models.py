"""
spion.models
"""

from django.contrib.auth.models import User
from django.db import models

from django.contrib import admin


class Resource(models.Model):
    path = models.FileField(upload_to='resources/%Y/%m/%d')
    
admin.site.register(Resource)

class Publication(models.Model):
    published = models.IntegerField() # Assumed that year of publication was enough
    publisher = models.CharField(max_length=512)
    url = models.URLField()
    author = models.ForeignKey('UserProfile')
    
admin.site.register(Publication)

class UserProfile(models.Model):
    user = models.OneToOneField(User)
    bio = models.TextField()
    
admin.site.register(UserProfile)
    
class NewsItem(models.Model):
    publish_start = models.DateField()
    publish_end = models.DateField()
    header = models.CharField(max_length=512)
    body = models.TextField()
    
admin.site.register(NewsItem)
    
    

