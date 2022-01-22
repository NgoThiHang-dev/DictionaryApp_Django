from django.db import models

# Create your models here.
class Dictionary(models.Model):
    tiengkho = models.CharField(max_length=100, null=True)
    phienamtiengkho = models.CharField(max_length=100, null=True, default='')
    fileaudiotiengkho = models.FileField(upload_to='audio', null=True, default='')
    vidutiengkho = models.CharField(max_length=200, null=True, default='')
    
    tiengviet = models.CharField(max_length=100, null=True, default='')
    phienamtiengviet = models.CharField(max_length=100, null=True, default='')
    fileaudiotiengviet = models.FileField(upload_to='audio', null=True, default='')
    vidutiengviet = models.CharField(max_length=200, null=True, default='')
    
    tiengchuru = models.CharField(max_length=100, null=True, default='')
    phienamtiengchuru = models.CharField(max_length=100, null=True, default='')
    fileaudiotiengchuru = models.FileField(upload_to='audio', null=True, default='')
    vidutiengchuru = models.CharField(max_length=200, null=True, default='')
    
    # image = models.ImageField(upload_to='image', null=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)

    class Meta:
        db_table = 'dictionary'
        
