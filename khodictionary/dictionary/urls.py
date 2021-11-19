from re import template
from django.urls import path
from . import views
from django.contrib.auth import views as auth_views
from django.conf.urls import url

from .views import signin, signup
app_name='dictionary'
urlpatterns = [
   path('', views.index, name='dictionary'),
   path('register/', signup, name='register'),
   path('login/', signin, name="login"),
   path('logout/',auth_views.LogoutView.as_view(next_page='/dictionary/'), name='logout'),
   
   
   #api
    path('', views.apiOverview, name='apiOverview'),
    path('api/dictionary-list/', views.showAll, name='dictionary-list'),
    path('api/dictionary-detail/<int:pk>/', views.viewCourse, name='dictionary-detail'),
    path('api/dictionary-create/', views.CreateCourse, name='dictionary-create'),
    path('api/dictionary-update/<int:pk>/', views.UpdateCourse, name='dictionary-update'),
    path('api/dictionary-delete/<int:pk>/', views.DeleteCourse, name='dictionary-delete'),
    
]