from django.contrib import admin
from .models import Course

class courseAdmin(admin.ModelAdmin):
    list_display = ['id','title','description','image']
# Register your models here.
admin.site.register(Course, courseAdmin)