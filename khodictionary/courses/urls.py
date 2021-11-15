from django.urls import path
from courses import views
from django.conf.urls import url 


app_name = 'courses'

urlpatterns = [
    path('', views.index, name = 'courses'),
    
    #api
    path('', views.apiOverview, name='apiOverview'),
    path('api/courses-list/', views.showAll, name='courses-list'),
    path('api/courses-detail/<int:pk>/', views.viewCourse, name='courses-detail'),
    path('api/courses-create/', views.CreateCourse, name='courses-create'),
    path('api/courses-update/<int:pk>/', views.UpdateCourse, name='courses-update'),
    path('api/courses-delete/<int:pk>/', views.DeleteCourse, name='courses-delete'),
    
]