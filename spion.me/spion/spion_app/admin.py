"""
admin custom
"""

from django.contrib import admin
from django.forms import ModelForm
from django.contrib.contenttypes import generic
from spion_app.models import *

from markitup.widgets import AdminMarkItUpWidget
from orderable.admin import OrderableAdmin

from adminsortable.admin import SortableAdmin, SortableTabularInline, SortableStackedInline

import settings


#class PublicationForm(ModelForm):
    #class Meta:
        #model = Publication
    #def __init__(self, *args, **kwargs):
        #super(PublicationForms, self).__init__(*args, **kwargs)
        #if 'instance' in kwargs:
            #self.fields['user'] = kwargs['instance'].id


class PublicationTypeAdmin(OrderableAdmin):
    model = PublicationType
    class Media:
        js = ('http://code.jquery.com/jquery-1.8.3.js',
              'http://code.jquery.com/ui/1.9.2/jquery-ui.js',)

class UserProfileAdmin(admin.ModelAdmin):
    formfield_overrides = {models.TextField: {'widget': AdminMarkItUpWidget}}
    
    model = UserProfile
    list_display = ('username', 'first_name', 'last_name', 'email')
    
    #inlines = [PublicationAuthorshipInline]
    
    def username(self, obj):
        return obj.user.username
    def first_name(self, obj):
        return obj.user.first_name
    def last_name(self, obj):
        return obj.user.last_name
    def email(self, obj):
        return obj.user.email

class AuthorInline(SortableTabularInline):
    model = Author
    extra = 1

class PublicationAdmin(SortableAdmin):
    formfield_overrides = {models.TextField: {'widget': AdminMarkItUpWidget}}
    model = Publication
    inlines = [AuthorInline]

class NewsItemAdmin(admin.ModelAdmin):
    formfield_overrides = {models.TextField: {'widget': AdminMarkItUpWidget}}
    model = NewsItem

class ResearchGroupAdmin(admin.ModelAdmin):
    formfield_overrides = {models.TextField: {'widget': AdminMarkItUpWidget}}
    model = ResearchGroup

class WorkPackageAdmin(admin.ModelAdmin):
    formfield_overrides = {models.TextField: {'widget': AdminMarkItUpWidget}}
    model = WorkPackage

class PartnerAdmin(admin.ModelAdmin):
    formfield_overrides = {models.TextField: {'widget': AdminMarkItUpWidget}}
    model = Partner

class SpionProjectAdmin(admin.ModelAdmin):
    formfield_overrides = {models.TextField: {'widget': AdminMarkItUpWidget}}
    model = SpionProject

admin.site.register(Resource)
admin.site.register(PublicationType, PublicationTypeAdmin)
#admin.site.register(ExternalAuthor)
admin.site.register(Publication, PublicationAdmin)
admin.site.register(UserProfile, UserProfileAdmin)
admin.site.register(NewsItem, NewsItemAdmin)
admin.site.register(Organisation)
admin.site.register(ResearchGroup, ResearchGroupAdmin)
admin.site.register(WorkPackage, WorkPackageAdmin)
admin.site.register(Partner, PartnerAdmin)
admin.site.register(SpionProject, SpionProjectAdmin)

