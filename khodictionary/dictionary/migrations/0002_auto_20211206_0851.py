# Generated by Django 3.2.7 on 2021-12-06 01:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dictionary', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='dictionary',
            name='fileaudiotiengkho',
            field=models.FileField(null=True, upload_to='media/audio'),
        ),
        migrations.AlterField(
            model_name='dictionary',
            name='fileaudiotiengviet',
            field=models.FileField(null=True, upload_to='media/audio'),
        ),
    ]