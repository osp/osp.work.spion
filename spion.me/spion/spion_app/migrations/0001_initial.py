# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Resource'
        db.create_table('spion_app_resource', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=512)),
            ('path', self.gf('django.db.models.fields.files.FileField')(max_length=100)),
        ))
        db.send_create_signal('spion_app', ['Resource'])

        # Adding model 'PublicationType'
        db.create_table('spion_app_publicationtype', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=512)),
        ))
        db.send_create_signal('spion_app', ['PublicationType'])

        # Adding model 'Publication'
        db.create_table('spion_app_publication', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=512)),
            ('summary', self.gf('django.db.models.fields.TextField')()),
            ('published', self.gf('django.db.models.fields.IntegerField')()),
            ('pub_type', self.gf('django.db.models.fields.related.ForeignKey')(related_name='publications', to=orm['spion_app.PublicationType'])),
            ('publisher', self.gf('django.db.models.fields.CharField')(max_length=512)),
            ('url', self.gf('django.db.models.fields.URLField')(max_length=200)),
        ))
        db.send_create_signal('spion_app', ['Publication'])

        # Adding M2M table for field user on 'Publication'
        db.create_table('spion_app_publication_user', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('publication', models.ForeignKey(orm['spion_app.publication'], null=False)),
            ('userprofile', models.ForeignKey(orm['spion_app.userprofile'], null=False))
        ))
        db.create_unique('spion_app_publication_user', ['publication_id', 'userprofile_id'])

        # Adding model 'UserProfile'
        db.create_table('spion_app_userprofile', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('user', self.gf('django.db.models.fields.related.OneToOneField')(to=orm['auth.User'], unique=True)),
            ('picture', self.gf('django.db.models.fields.files.FileField')(max_length=100, blank=True)),
            ('bio', self.gf('django.db.models.fields.TextField')()),
            ('work_package', self.gf('django.db.models.fields.related.ForeignKey')(related_name='researchers', to=orm['spion_app.WorkPackage'])),
        ))
        db.send_create_signal('spion_app', ['UserProfile'])

        # Adding model 'NewsItem'
        db.create_table('spion_app_newsitem', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('publish_start', self.gf('django.db.models.fields.DateField')()),
            ('publish_end', self.gf('django.db.models.fields.DateField')()),
            ('header', self.gf('django.db.models.fields.CharField')(max_length=512)),
            ('body', self.gf('django.db.models.fields.TextField')()),
        ))
        db.send_create_signal('spion_app', ['NewsItem'])

        # Adding model 'Organisation'
        db.create_table('spion_app_organisation', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=512)),
            ('location', self.gf('django.db.models.fields.CharField')(max_length=512)),
        ))
        db.send_create_signal('spion_app', ['Organisation'])

        # Adding model 'ResearchGroup'
        db.create_table('spion_app_researchgroup', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('short_name', self.gf('django.db.models.fields.CharField')(max_length=512)),
            ('long_name', self.gf('django.db.models.fields.TextField')()),
            ('description', self.gf('django.db.models.fields.TextField')()),
        ))
        db.send_create_signal('spion_app', ['ResearchGroup'])

        # Adding model 'WorkPackage'
        db.create_table('spion_app_workpackage', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=512)),
            ('description', self.gf('django.db.models.fields.TextField')()),
            ('organisation', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['spion_app.Organisation'])),
            ('research_group', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['spion_app.ResearchGroup'])),
        ))
        db.send_create_signal('spion_app', ['WorkPackage'])

        # Adding model 'Partner'
        db.create_table('spion_app_partner', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=512)),
            ('url', self.gf('django.db.models.fields.URLField')(max_length=200, blank=True)),
        ))
        db.send_create_signal('spion_app', ['Partner'])

        # Adding model 'SpionProject'
        db.create_table('spion_app_spionproject', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('description', self.gf('django.db.models.fields.TextField')()),
        ))
        db.send_create_signal('spion_app', ['SpionProject'])


    def backwards(self, orm):
        # Deleting model 'Resource'
        db.delete_table('spion_app_resource')

        # Deleting model 'PublicationType'
        db.delete_table('spion_app_publicationtype')

        # Deleting model 'Publication'
        db.delete_table('spion_app_publication')

        # Removing M2M table for field user on 'Publication'
        db.delete_table('spion_app_publication_user')

        # Deleting model 'UserProfile'
        db.delete_table('spion_app_userprofile')

        # Deleting model 'NewsItem'
        db.delete_table('spion_app_newsitem')

        # Deleting model 'Organisation'
        db.delete_table('spion_app_organisation')

        # Deleting model 'ResearchGroup'
        db.delete_table('spion_app_researchgroup')

        # Deleting model 'WorkPackage'
        db.delete_table('spion_app_workpackage')

        # Deleting model 'Partner'
        db.delete_table('spion_app_partner')

        # Deleting model 'SpionProject'
        db.delete_table('spion_app_spionproject')


    models = {
        'auth.group': {
            'Meta': {'object_name': 'Group'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '80'}),
            'permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'})
        },
        'auth.permission': {
            'Meta': {'ordering': "('content_type__app_label', 'content_type__model', 'codename')", 'unique_together': "(('content_type', 'codename'),)", 'object_name': 'Permission'},
            'codename': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['contenttypes.ContentType']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        'auth.user': {
            'Meta': {'object_name': 'User'},
            'date_joined': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'groups': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Group']", 'symmetrical': 'False', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_active': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'is_staff': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_superuser': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'last_login': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'password': ('django.db.models.fields.CharField', [], {'max_length': '128'}),
            'user_permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'}),
            'username': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '30'})
        },
        'contenttypes.contenttype': {
            'Meta': {'ordering': "('name',)", 'unique_together': "(('app_label', 'model'),)", 'object_name': 'ContentType', 'db_table': "'django_content_type'"},
            'app_label': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'model': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        'spion_app.newsitem': {
            'Meta': {'object_name': 'NewsItem'},
            'body': ('django.db.models.fields.TextField', [], {}),
            'header': ('django.db.models.fields.CharField', [], {'max_length': '512'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'publish_end': ('django.db.models.fields.DateField', [], {}),
            'publish_start': ('django.db.models.fields.DateField', [], {})
        },
        'spion_app.organisation': {
            'Meta': {'object_name': 'Organisation'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'location': ('django.db.models.fields.CharField', [], {'max_length': '512'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '512'})
        },
        'spion_app.partner': {
            'Meta': {'object_name': 'Partner'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '512'}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'})
        },
        'spion_app.publication': {
            'Meta': {'object_name': 'Publication'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'pub_type': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'publications'", 'to': "orm['spion_app.PublicationType']"}),
            'published': ('django.db.models.fields.IntegerField', [], {}),
            'publisher': ('django.db.models.fields.CharField', [], {'max_length': '512'}),
            'summary': ('django.db.models.fields.TextField', [], {}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '512'}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200'}),
            'user': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'publications'", 'symmetrical': 'False', 'to': "orm['spion_app.UserProfile']"})
        },
        'spion_app.publicationtype': {
            'Meta': {'object_name': 'PublicationType'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '512'})
        },
        'spion_app.researchgroup': {
            'Meta': {'object_name': 'ResearchGroup'},
            'description': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'long_name': ('django.db.models.fields.TextField', [], {}),
            'short_name': ('django.db.models.fields.CharField', [], {'max_length': '512'})
        },
        'spion_app.resource': {
            'Meta': {'object_name': 'Resource'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '512'}),
            'path': ('django.db.models.fields.files.FileField', [], {'max_length': '100'})
        },
        'spion_app.spionproject': {
            'Meta': {'object_name': 'SpionProject'},
            'description': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        'spion_app.userprofile': {
            'Meta': {'object_name': 'UserProfile'},
            'bio': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'picture': ('django.db.models.fields.files.FileField', [], {'max_length': '100', 'blank': 'True'}),
            'user': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['auth.User']", 'unique': 'True'}),
            'work_package': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'researchers'", 'to': "orm['spion_app.WorkPackage']"})
        },
        'spion_app.workpackage': {
            'Meta': {'object_name': 'WorkPackage'},
            'description': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'organisation': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['spion_app.Organisation']"}),
            'research_group': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['spion_app.ResearchGroup']"}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '512'})
        }
    }

    complete_apps = ['spion_app']