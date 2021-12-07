from django.urls import path
from . import views
from django.conf.urls import url

app_name = 'exam'

urlpatterns = [
    path('', views.index, name = 'exam'),
    # path('exam_detail', views.exam_detail, name='exam_detail'),
    url(r'^exam_detail/(?P<exam_id>[0-9]+)/$', views.exam_detail, name='exam_detail'),
]