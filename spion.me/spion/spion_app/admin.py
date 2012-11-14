"""
admin custom
"""

from django.contrib import admin
from django.forms import ModelForm
from spion_app.models import *


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
    


admin.site.register(Resource)
admin.site.register(PublicationType)
admin.site.register(Publication)
admin.site.register(UserProfile, UserProfileAdmin)
admin.site.register(NewsItem)
admin.site.register(Organisation)
admin.site.register(ResearchGroup)
admin.site.register(WorkPackage)
admin.site.register(Partner)
admin.site.register(SpionProject)

