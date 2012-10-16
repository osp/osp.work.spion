"""
spion.models
"""

from django.contrib.auth.models import User
from django.db import models

from django.contrib import admin

# class WorkPackage
#     description
#     researchers (foreignfield profile)

# admin.site.register(WorkPackage)

class Resource(models.Model):
    path = models.FileField(upload_to='resources/%Y/%m/%d')
    
admin.site.register(Resource)

class Publication(models.Model):
    # title
    # category = conference / journal / book / delivrable
    # if delivrable:
    #    models.ForeignKey('WorkPackage')
    #    number
    published = models.IntegerField() # Assumed that year of publication was enough
    publisher = models.CharField(max_length=512)
    url = models.URLField()
    author = models.ForeignKey('UserProfile')
    # There can be more than 1 user.
    # Also: some of these authors are not necessarily Users
    
admin.site.register(Publication)

class UserProfile(models.Model):
    user = models.OneToOneField(User)
    # group
    # department
    # university
    # photo
    bio = models.TextField()
    
admin.site.register(UserProfile)
    
class NewsItem(models.Model):
    publish_start = models.DateField()
    publish_end = models.DateField()
    header = models.CharField(max_length=512)
    body = models.TextField()
    
admin.site.register(NewsItem)
    
    

