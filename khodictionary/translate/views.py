from django.shortcuts import render

# Create your views here.
from translate.models import *
from courses.models import *
from django.http import HttpResponse
from django.db.models import Q

def translate(request):
   return render(request, 'translate/translate.html')

def document(request):
    return render(request, 'translate/document.html')