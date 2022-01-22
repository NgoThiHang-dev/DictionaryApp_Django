from django.shortcuts import render

# Create your views here.
from translate.models import *
from courses.models import *
from django.http import HttpResponse
from django.db.models import Q
from django.shortcuts import render, HttpResponse
from dictionary.models import *
# from googletrans import Translator


def translate(request):
    # results=Dictionary.objects.all()
    
    if request.method == 'POST':
        texttrans = request.POST.get('texttrans')
        results="abc"
        if request.POST.get('tiengkho'):
            results = "K'ho"
        elif request.POST.get('tiengchuru'):
            results = "Churu"
        context = {
            'texttrans': texttrans,
            'result':results,
        }
        return render(request, 'translate/translate.html', context)
    return render(request, 'translate/translate.html')



def document(request):
    
    return render(request, 'translate/document.html')
