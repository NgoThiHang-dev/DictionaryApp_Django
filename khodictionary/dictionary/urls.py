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
]