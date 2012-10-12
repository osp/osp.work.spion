"""
spion.models
"""

from django.contrib.auth.models import User
from django.db import models


class Resource(models.Model):
    path = models.FileField(upload_to='resources/%Y/%m/%d')

class Publication(models.Model):
    published = models.IntegerField() # Assumed that year of publication was enough
    publisher = models.CharField(max_length=512)
    url = models.URLField()
    author = models.ForeignKey('UserProfile')

class UserProfile(models.Model):
    user = models.OneToOneField(User)
    bio = models.TextField()
    
    

