from django.urls import path
from courses import views
from django.conf.urls import url 


app_name = 'courses'

urlpatterns = [
    path('', views.index, name = 'courses'),
    url(r'^course_detail/(?P<chepbai_id>[0-9]+)/$', views.course_detail, name='course_detail'),
    url(r'^hoivatraloi_detail/(?P<hoivatraloi_id>[0-9]+)/$', views.hoivatraloi, name='hoivatraloi'),
    url(r'^damthoai_detail/(?P<damthoai_id>[0-9]+)/$', views.damthoai, name='damthoai'),
    url(r'^vietdoanvan_detail/(?P<vietdoanvan_id>[0-9]+)/$', views.vietdoanvan, name='vietdoanvan'),
    url(r'^tuvung_detail/(?P<tuvung_id>[0-9]+)/$', views.tuvung, name='tuvung'),
    url(r'^datcauhoi_detail/(?P<datcauhoi_id>[0-9]+)/$', views.datcauhoi, name='datcauhoi'),
    #api
    path('', views.apiOverview, name='apiOverview'),
    path('api/courses-list/', views.showAll, name='courses-list'),
    path('api/courses-detail/<int:pk>/', views.viewCourse, name='courses-detail'),
    path('api/courses-create/', views.CreateCourse, name='courses-create'),
    path('api/courses-update/<int:pk>/', views.UpdateCourse, name='courses-update'),
    path('api/courses-delete/<int:pk>/', views.DeleteCourse, name='courses-delete'),
    #chepbai
    path('api/chepbai-list/', views.showCoursesChepBai, name='chepbai-list'),
    
]