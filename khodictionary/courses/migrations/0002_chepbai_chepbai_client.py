# Generated by Django 3.2.7 on 2021-11-17 02:07

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('courses', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ChepBai',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tiengkho', models.TextField(null=True)),
                ('tiengviet', models.TextField(null=True)),
                ('image', models.ImageField(null=True, upload_to='image')),
                ('created_at', models.DateTimeField(auto_now_add=True, null=True)),
                ('updated_at', models.DateTimeField(auto_now=True, null=True)),
                ('idbai', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='courses.course')),
            ],
            options={
                'db_table': 'courses_chepbai',
            },
        ),
        migrations.CreateModel(
            name='ChepBai_Client',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('bainguoidung', models.ImageField(null=True, upload_to='bainguoidung')),
                ('chamdiem', models.CharField(max_length=100, null=True)),
                ('idchepbai', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='courses.chepbai')),
                ('iduser', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'chepbai_client',
            },
        ),
    ]
