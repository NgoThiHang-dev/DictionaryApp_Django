# Generated by Django 3.2.7 on 2022-01-20 02:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dictionary', '0004_auto_20211207_1044'),
    ]

    operations = [
        migrations.AddField(
            model_name='dictionary',
            name='fileaudiotiengchuru',
            field=models.FileField(default='', null=True, upload_to='audio'),
        ),
        migrations.AddField(
            model_name='dictionary',
            name='phienamtiengchuru',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='dictionary',
            name='tiengchuru',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='dictionary',
            name='vidutiengchuru',
            field=models.CharField(default='', max_length=200, null=True),
        ),
    ]