"""
admin custom
"""

from django.contrib import admin
from django.forms import ModelForm
from spion_app.models import *

from markitup.widgets import AdminMarkItUpWidget

#class PublicationForm(ModelForm):
    #class Meta:
        #model = Publication
    #def __init__(self, *args, **kwargs):
        #super(PublicationForm, self).__init__(*args, **kwargs)
        #if 'instance' in kwargs:
            #self.fields['user'] = kwargs['instance'].id

class PublicationRelInline(admin.TabularInline):
    model = Publication.user.through
    extra = 0
    


class UserProfileAdmin(admin.ModelAdmin):
    formfield_overrides = {models.TextField: {'widget': AdminMarkItUpWidget}}
    
    model = UserProfile
    list_display = ('username', 'first_name', 'last_name', 'email')
    
    inlines = [PublicationRelInline]
    
    def username(self, obj):
        return obj.user.username
    def first_name(self, obj):
        return obj.user.first_name
    def last_name(self, obj):
        return obj.user.last_name
    def email(self, obj):
        return obj.user.email
    

class PublicationAdmin(admin.ModelAdmin):
    formfield_overrides = {models.TextField: {'widget': AdminMarkItUpWidget}}
    model = Publication

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
admin.site.register(PublicationType)
admin.site.register(ExternalAuthor)
admin.site.register(Publication, PublicationAdmin)
admin.site.register(UserProfile, UserProfileAdmin)
admin.site.register(NewsItem, NewsItemAdmin)
admin.site.register(Organisation)
admin.site.register(ResearchGroup, ResearchGroupAdmin)
admin.site.register(WorkPackage, WorkPackageAdmin)
admin.site.register(Partner, PartnerAdmin)
admin.site.register(SpionProject, SpionProjectAdmin)

