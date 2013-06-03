"""
spion.models
"""

from django.contrib.auth.models import User
from django.template.defaultfilters import slugify

from django.db import models

from django.contrib import admin
from orderable.models import Orderable

# Yet another sortable utility which can handle foreignkeys
from adminsortable.models import Sortable

class Resource(models.Model):
    name = models.CharField(max_length=512)
    path = models.FileField(upload_to='resources/%Y/%m/%d')
    
    def __unicode__(self):
        return self.name

class PublicationType(Orderable):
    name = models.CharField(max_length=512)
    def __unicode__(self):
        return self.name



class Author(Sortable):
    class Meta(Sortable.Meta):
        pass
        
    first_name = models.CharField(max_length=512, blank=True)
    last_name = models.CharField(max_length=512, blank=True)
    url = models.URLField(blank=True)
    user = models.ForeignKey('UserProfile', blank=True, null=True)
    publication = models.ForeignKey('Publication', blank=True, null=True)
    
    def get_full_name(self):
        if self.user:
            return self.user.user.get_full_name()
        return '%s %s'%(self.first_name, self.last_name)
        
    
    def __unicode__(self):
        return self.get_full_name()


class Publication(Sortable):
    class Meta(Sortable.Meta):
        pass
        
    slug = models.SlugField(max_length=255, editable=False)
    
    title = models.CharField(max_length=512)
    summary = models.TextField()
    published = models.IntegerField() # Assumed that year of publication was enough
    pub_type = models.ForeignKey('PublicationType', related_name='publication') # a la bibtex... but simple!  + deliverable + talks
    publisher = models.CharField(max_length=512, blank=True) 
    url = models.URLField()
    
    def save(self, force_insert=False, force_update=False, *args, **kwargs):
        # Automatically generate the slug from the title on save
        self.slug = slugify(self.title)
        super(Publication, self).save(force_insert, force_update) 
    
    def __unicode__(self):
        return self.title

class UserProfile(models.Model):
    slug = models.SlugField(max_length=255, editable=False)
    
    user = models.OneToOneField(User)
    picture = models.FileField(upload_to='profpict/%Y/%m/%d', blank=True)
    bio = models.TextField()
    work_package = models.ForeignKey('WorkPackage', related_name='researchers')
    
    #def __getattr__(self, name):
        #return getattr(self.user, name)
        
        
    def publications(self):
        return Publication.objects.filter(author__user=self)
    
    def save(self, force_insert=False, force_update=False, *args, **kwargs):
        # Automatically generate the slug from the title on save
        self.slug = slugify(self.user.get_full_name())
        super(UserProfile, self).save(force_insert, force_update) 
    
    def __unicode__(self):
        return self.user.username
        
    def str(self):
        return self.__unicode__()
    
    class Meta:
        ordering = ('user__last_name',)

    

# checked
class NewsItem(models.Model):
    slug = models.SlugField(max_length=255, editable=False)
    
    publish_start = models.DateField()
    publish_end = models.DateField()
    header = models.CharField(max_length=512)
    body = models.TextField()

    def save(self, force_insert=False, force_update=False, *args, **kwargs):
        # Automatically generate the slug from the title on save
        self.slug = slugify(self.header)
        super(NewsItem, self).save(force_insert, force_update) 
    
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
    slug = models.SlugField(max_length=255, editable=False)
    
    title = models.CharField(max_length=512)
    description = models.TextField()
    organisation = models.ForeignKey(Organisation)
    research_group = models.ForeignKey(ResearchGroup)
    
    def save(self, force_insert=False, force_update=False, *args, **kwargs):
        # Automatically generate the slug from the title on save
        self.slug = slugify(self.title)
        super(WorkPackage, self).save(force_insert, force_update) 
    
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
    
    class Meta:
      verbose_name = "Various Website Text"
    
    def __unicode__(self):
        return self.title