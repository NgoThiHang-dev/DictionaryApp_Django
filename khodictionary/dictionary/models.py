from django.db import models

# Create your models here.
class Dictionary(models.Model):
    tiengkho = models.CharField(max_length=100, null=True)
    phienamtiengkho = models.CharField(max_length=100, null=True)
    fileaudiotiengkho = models.FileField(upload_to='audio', null=True)
    vidutiengkho = models.CharField(max_length=200, null=True)
    
    tiengviet = models.CharField(max_length=100, null=True)
    phienamtiengviet = models.CharField(max_length=100, null=True)
    fileaudiotiengviet = models.FileField(upload_to='audio', null=True)
    vidutiengviet = models.CharField(max_length=200, null=True)
    # image = models.ImageField(upload_to='image', null=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)

    class Meta:
        db_table = 'dictionary'
        
