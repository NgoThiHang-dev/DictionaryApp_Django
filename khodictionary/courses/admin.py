from django.contrib import admin
from .models import *


class courseAdmin(admin.ModelAdmin):
    list_display = ['id', 'title', 'description', 'image']


class chepbaiAdmin(admin.ModelAdmin):
    list_display = ['id', 'tiengkho', 'tiengviet', 'image', 'idbai_id']


class hoivatraloiAdmin(admin.ModelAdmin):
    list_display = ['id', 'cauhoitiengkho', 'cauhoitiengviet',
                    'traloitiengkho', 'traloitiengviet', 'image', 'idbai_id']


class damthoaiAdmin(admin.ModelAdmin):
    list_display = ['id', 'cauhoitiengkho', 'cauhoitiengviet',
                    'traloitiengkho', 'traloitiengviet', 'image', 'idbai_id']


class datcauhoiAdmin(admin.ModelAdmin):
    list_display = ['id', 'tu', 'tiengkho', 'tiengviet', 'image', 'idbai']


class vietdoanvanAdmin(admin.ModelAdmin):
    list_display = ['id', 'tiengkho', 'tiengviet', 'image', 'chude', 'idbai']


class tuvungAdmin(admin.ModelAdmin):
    list_display = ['id', 'tiengkho', 'tiengviet',
                    'image', 'phienam', 'vidu', 'fileaudio', 'idbai']


# Register your models here.
admin.site.register(Course, courseAdmin)
admin.site.register(ChepBai, chepbaiAdmin)
admin.site.register(HoiVaTraLoi, hoivatraloiAdmin)
admin.site.register(DamThoai, damthoaiAdmin)


admin.site.register(DatCau, datcauhoiAdmin)
admin.site.register(VietDoanVan, vietdoanvanAdmin)
admin.site.register(TuVung, tuvungAdmin)
