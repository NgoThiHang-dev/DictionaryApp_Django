from django.db import models
from courses.models import *

# Create your models here.
class BaiKiemTra(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField(max_length=1000)

    class Meta:
        db_table = 'baikiemtra'

class CauHoiKiemTra(models.Model):
    question = models.CharField(max_length=200)
    option1 = models.CharField(max_length=100)
    option2 = models.CharField(max_length=100)
    option3 = models.CharField(max_length=100)
    option4 = models.CharField(max_length=100)
    trueanswer = models.CharField(max_length=100)
    idbai = models.ForeignKey(BaiKiemTra, on_delete=models.SET_NULL, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        # ordering=('-publish',)
        db_table = 'cauhoikiemtra'