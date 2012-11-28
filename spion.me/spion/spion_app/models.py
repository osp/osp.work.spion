"""
spion.models
"""

from django.contrib.auth.models import User
from django.db import models

from django.contrib import admin


class Resource(models.Model):
    name = models.CharField(max_length=512)
    path = models.FileField(upload_to='resources/%Y/%m/%d')
    
    def __unicode__(self):
        return self.name

class PublicationType(models.Model):
    name = models.CharField(max_length=512)
    def __unicode__(self):
        return self.name

class ExternalAuthor(models.Model):
    name = models.CharField(max_length=512)
    url = models.URLField(blank=True)
    
    def __unicode__(self):
        return self.name
        
class Publication(models.Model):
    title = models.CharField(max_length=512)
    summary = models.TextField()
    published = models.IntegerField() # Assumed that year of publication was enough
    pub_type = models.ForeignKey('PublicationType', related_name='publications') # a la bibtex... but simple!  + deliverable + talks
    publisher = models.CharField(max_length=512, blank=True) 
    
    url = models.URLField()
    user = models.ManyToManyField('UserProfile', related_name='publications')
    external_authors = models.ManyToManyField('ExternalAuthor', related_name='publications')
    
    def __unicode__(self):
        return self.title

class UserProfile(models.Model):
    user = models.OneToOneField(User)
    picture = models.FileField(upload_to='profpict/%Y/%m/%d', blank=True)
    bio = models.TextField()
    work_package = models.ForeignKey('WorkPackage', related_name='researchers')
    
    #def __getattr__(self, name):
        #return getattr(self.user, name)
    
    def __unicode__(self):
        return self.user.username
        
    def str(self):
        return self.__unicode__()
    

# checked
class NewsItem(models.Model):
    publish_start = models.DateField()
    publish_end = models.DateField()
    header = models.CharField(max_length=512)
    body = models.TextField()
    
    def __unicode__(self):
        return self.header
    def str(self):
        return self.__unicode__()
        
class Organisation(models.Model):
    name = models.CharField(max_length=512)
    location = models.CharField(max_length=512)
    logo = models.FileField(upload_to='logos/%d', null=True)
    def __unicode__(self):
        return self.name
    
class ResearchGroup(models.Model):
    short_name = models.CharField(max_length=512)
    long_name = models.TextField()
    description = models.TextField()
    def __unicode__(self):
        return self.short_name
        
        
class WorkPackage(models.Model):
    title = models.CharField(max_length=512)
    description = models.TextField()
    organisation = models.ForeignKey(Organisation)
    research_group = models.ForeignKey(ResearchGroup)
    
    def __unicode__(self):
        return self.title

    
class Partner(models.Model):
    title = models.CharField(max_length=512)
    url = models.URLField(blank=True)
    description = models.TextField(blank=True)

    def __unicode__(self):
        return self.title

        
class SpionProject(models.Model):
    title = models.CharField(max_length=512, default="box title")
    description = models.TextField()
    
    def __unicode__(self):
        return self.title