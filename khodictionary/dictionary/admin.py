from django.contrib import admin
from .models import Dictionary
# Register your models here.
admin.site.site_header = "Ứng dụng từ điển K'Ho - Việt"


class dictionaryAdmin(admin.ModelAdmin):
    list_display = ['tiengkho','phienamtiengkho','fileaudiotiengkho','vidutiengkho','tiengviet',
                    'phienamtiengviet', 'fileaudiotiengviet'
                    , 'vidutiengviet', 'created_at', 'updated_at' ]
admin.site.register(Dictionary, dictionaryAdmin)

