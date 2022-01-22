from django.urls import path,include
from . import views

app_name='translate'
urlpatterns = [
   path('', views.translate, name='translate'),
   
   path('document/', views.document, name='document'),
]