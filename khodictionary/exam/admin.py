from django.contrib import admin
from.models import *

# Register your models here.
class baiktAdmin(admin.ModelAdmin):
    list_display = ['id','title','description']

class cauhoiAdmin(admin.ModelAdmin):
    # list_display = ['id','question','trueanswer']
    list_display = ['id','question','option1','option2','option3','option4','trueanswer']

admin.site.register(BaiKiemTra, baiktAdmin)
admin.site.register(CauHoiKiemTra, cauhoiAdmin)