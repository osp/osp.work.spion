"""
spion.models
"""

from django.contrib.auth.models import User
from django.db import models

from django.contrib import admin


class Resource(models.Model):
    name = models.CharField(max_length=512)
    path = models.FileField(upload_to='resources/%Y/%m/%d')
    

class Publication(models.Model):
    title = models.CharField(max_length=512)
    summary = models.TextField()
    published = models.IntegerField() # Assumed that year of publication was enough
    publisher = models.CharField(max_length=512)
    url = models.URLField()
    user = models.ManyToManyField('UserProfile', related_name='publications')
    
    def __unicode__(self):
        return self.title

class UserProfile(models.Model):
    user = models.OneToOneField(User)
    bio = models.TextField()
    
    #def __getattr__(self, name):
        #return getattr(self.user, name)
    
    def __unicode__(self):
        return self.user.username
        
    def str(self):
        return self.__unicode__()
    
    
class NewsItem(models.Model):
    publish_start = models.DateField()
    publish_end = models.DateField()
    header = models.CharField(max_length=512)
    body = models.TextField()
    
    def __unicode__(self):
        return self.header
    def str(self):
        return self.__unicode__()
    
    
    

