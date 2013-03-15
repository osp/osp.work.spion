# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Authorship'
        db.create_table('spion_app_authorship', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('order', self.gf('django.db.models.fields.PositiveIntegerField')(default=1, db_index=True)),
            ('author', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['spion_app.UserProfile'])),
            ('publication', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['spion_app.Publication'])),
        ))
        db.send_create_signal('spion_app', ['Authorship'])

        # Removing M2M table for field user on 'Publication'
        db.delete_table('spion_app_publication_user')


    def backwards(self, orm):
        # Deleting model 'Authorship'
        db.delete_table('spion_app_authorship')

        # Adding M2M table for field user on 'Publication'
        db.create_table('spion_app_publication_user', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('publication', models.ForeignKey(orm['spion_app.publication'], null=False)),
            ('userprofile', models.ForeignKey(orm['spion_app.userprofile'], null=False))
        ))
        db.create_unique('spion_app_publication_user', ['publication_id', 'userprofile_id'])


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
        'spion_app.authorship': {
            'Meta': {'ordering': "['order']", 'object_name': 'Authorship'},
            'author': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['spion_app.UserProfile']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'order': ('django.db.models.fields.PositiveIntegerField', [], {'default': '1', 'db_index': 'True'}),
            'publication': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['spion_app.Publication']"})
        },
        'spion_app.externalauthor': {
            'Meta': {'object_name': 'ExternalAuthor'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '512'}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'})
        },
        'spion_app.newsitem': {
            'Meta': {'object_name': 'NewsItem'},
            'body': ('django.db.models.fields.TextField', [], {}),
            'header': ('django.db.models.fields.CharField', [], {'max_length': '512'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'publish_end': ('django.db.models.fields.DateField', [], {}),
            'publish_start': ('django.db.models.fields.DateField', [], {}),
            'slug': ('django.db.models.fields.SlugField', [], {'max_length': '255'})
        },
        'spion_app.organisation': {
            'Meta': {'object_name': 'Organisation'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'location': ('django.db.models.fields.CharField', [], {'max_length': '512'}),
            'logo': ('django.db.models.fields.files.FileField', [], {'max_length': '100', 'null': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '512'})
        },
        'spion_app.partner': {
            'Meta': {'object_name': 'Partner'},
            'description': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '512'}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200', 'blank': 'True'})
        },
        'spion_app.publication': {
            'Meta': {'object_name': 'Publication'},
            'external_authors': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'related_name': "'publications'", 'blank': 'True', 'to': "orm['spion_app.ExternalAuthor']"}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'pub_type': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'publications'", 'to': "orm['spion_app.PublicationType']"}),
            'published': ('django.db.models.fields.IntegerField', [], {}),
            'publisher': ('django.db.models.fields.CharField', [], {'max_length': '512', 'blank': 'True'}),
            'slug': ('django.db.models.fields.SlugField', [], {'max_length': '255'}),
            'summary': ('django.db.models.fields.TextField', [], {}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '512'}),
            'url': ('django.db.models.fields.URLField', [], {'max_length': '200'}),
            'user': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'publications'", 'symmetrical': 'False', 'through': "orm['spion_app.Authorship']", 'to': "orm['spion_app.UserProfile']"})
        },
        'spion_app.publicationtype': {
            'Meta': {'ordering': "['sort_order']", 'object_name': 'PublicationType'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '512'}),
            'sort_order': ('django.db.models.fields.IntegerField', [], {'db_index': 'True', 'blank': 'True'})
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
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'title': ('django.db.models.fields.CharField', [], {'default': "'box title'", 'max_length': '512'})
        },
        'spion_app.userprofile': {
            'Meta': {'ordering': "('user__last_name',)", 'object_name': 'UserProfile'},
            'bio': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'picture': ('django.db.models.fields.files.FileField', [], {'max_length': '100', 'blank': 'True'}),
            'slug': ('django.db.models.fields.SlugField', [], {'max_length': '255'}),
            'user': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['auth.User']", 'unique': 'True'}),
            'work_package': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'researchers'", 'to': "orm['spion_app.WorkPackage']"})
        },
        'spion_app.workpackage': {
            'Meta': {'object_name': 'WorkPackage'},
            'description': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'organisation': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['spion_app.Organisation']"}),
            'research_group': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['spion_app.ResearchGroup']"}),
            'slug': ('django.db.models.fields.SlugField', [], {'max_length': '255'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '512'})
        }
    }

    complete_apps = ['spion_app']