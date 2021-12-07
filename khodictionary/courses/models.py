from django.db import models
from django.contrib.auth.models import User

# Create your models here.


class Course(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField(max_length=1000, null=True)
    image = models.ImageField(upload_to='image', null=True)

    class Meta:
        # managed = False
        db_table = 'courses'

    def __str__(self):
        return self.title


class ChepBai(models.Model):
    tiengkho = models.TextField(null=True)
    tiengviet = models.TextField(null=True)
    image = models.ImageField(upload_to='image', null=True)
    idbai = models.ForeignKey(Course, on_delete=models.SET_NULL, null=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)

    class Meta:
        db_table = 'courses_chepbai'


class ChepBai_Client(models.Model):
    bainguoidung = models.ImageField(upload_to='bainguoidung', null=True)
    chamdiem = models.CharField(max_length=100, null=True)
    idchepbai = models.ForeignKey(
        ChepBai, on_delete=models.SET_NULL, null=True)
    iduser = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = 'chepbai_client'


class HoiVaTraLoi(models.Model):
    cauhoitiengkho = models.TextField(null=True)
    cauhoitiengviet = models.TextField(null=True)
    traloitiengkho = models.TextField(null=True)
    traloitiengviet = models.TextField(null=True)
    image = models.ImageField(upload_to='image', null=True)
    idbai = models.ForeignKey(Course, on_delete=models.SET_NULL, null=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)

    class Meta:
        db_table = 'courses_whquestion'


class DamThoai(models.Model):
    cauhoitiengkho = models.TextField(null=True)
    cauhoitiengviet = models.TextField(null=True)
    traloitiengkho = models.TextField(null=True)
    traloitiengviet = models.TextField(null=True)
    image = models.ImageField(upload_to='image', null=True)
    idbai = models.ForeignKey(Course, on_delete=models.SET_NULL, null=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)

    class Meta:
        db_table = 'courses_damthoai'




class DatCau(models.Model):
    tu = models.CharField(max_length=50, null=True)
    tiengkho = models.CharField(max_length=50, null=True)
    tiengviet = models.CharField(max_length=50, null=True)
    image = models.ImageField(upload_to='image', null=True)
    idbai = models.ForeignKey(Course, on_delete=models.SET_NULL, null=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)
    
    class Meta:
        db_table = 'courses_datcau'

class VietDoanVan(models.Model):
    tiengkho = models.TextField(null=True)
    tiengviet = models.TextField(null=True)
    chude = models.TextField(null=True)
    image = models.ImageField(upload_to='image', null=True)
    idbai = models.ForeignKey(Course, on_delete=models.SET_NULL, null=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)
    class Meta:
        db_table = 'courses_vietdoanvan'
        
class TuVung(models.Model):
    tiengkho = models.CharField(max_length=50, null=True)
    tiengviet = models.CharField(max_length=50, null=True)
    image = models.ImageField(upload_to='image', null=True)
    phienam = models.CharField(max_length=100, null=True)
    vidu = models.CharField(max_length=200, null=True)
    fileaudio = models.FileField(upload_to='audio', null=True)
    idbai = models.ForeignKey(Course, on_delete=models.SET_NULL, null=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)
    
    class Meta:
        db_table = 'courses_tuvung'
        
        

        