# Generated by Django 3.2.7 on 2021-11-19 02:23

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0005_vietdoanvan'),
    ]

    operations = [
        migrations.CreateModel(
            name='TuVung',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tiengkho', models.CharField(max_length=50, null=True)),
                ('tiengviet', models.CharField(max_length=50, null=True)),
                ('image', models.ImageField(null=True, upload_to='image')),
                ('phienam', models.CharField(max_length=100, null=True)),
                ('vidu', models.CharField(max_length=200, null=True)),
                ('fileaudio', models.FileField(null=True, upload_to='audio')),
                ('created_at', models.DateTimeField(auto_now_add=True, null=True)),
                ('updated_at', models.DateTimeField(auto_now=True, null=True)),
                ('idbai', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='courses.course')),
            ],
            options={
                'db_table': 'courses_tung',
            },
        ),
    ]
