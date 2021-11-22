from django.shortcuts import redirect, render
from django.http import HttpResponse
from django.http import HttpResponseRedirect

from .models import Dictionary
from .forms import LoginForm, RegistrationForm  
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from dictionary.models import *
from django.db.models import Q
from django.http import JsonResponse


from rest_framework.response import Response
from rest_framework import status
from .serializers import DictionarySerializer
from rest_framework.decorators import api_view

# Create your views here.
# class GetAllDictionaryAPIView(APIView):
#     def get(self, request):
#         list_course=Dictionary.objects.all()
#         mydata=GetAllDictionarySerializer(list_course, many=True)
#         return Response(data=mydata.data, status=status.HTTP_200_OK)
    
@api_view(['GET'])   
def apiOverview(request):
    courses_urls={
        'List': 'dictionary-list/',
        'Detail view': 'dictionary-detail/<int:id>',
        'Create': 'dictionary-create/',
        'Update': 'dictionary-update/<int:id>',
        'Delete': 'dictionary-delete/<int:id>', 
    }
    return Response(courses_urls)
        

@api_view(['GET'])
def showAll(request):
    courses=Dictionary.objects.all()
    serializer=DictionarySerializer(courses, many=True)
    return Response(serializer.data)
 
@api_view(['GET'])
def viewCourse(request, pk):
    course=Dictionary.objects.get(id=pk)
    serializer=DictionarySerializer(course, many=False)
    return Response(serializer.data)

@api_view(['POST'])
def CreateCourse(request):
    serializer=DictionarySerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)

@api_view(['POST'])
def UpdateCourse(request, pk):
    product = Dictionary.objects.get(id=pk)
    serializer = DictionarySerializer(instance=product, data=request.data)
    
    if serializer.is_valid():
        serializer.save()
        
    return Response(serializer.data)


@api_view(['GET'])
def DeleteCourse(request, pk):
    product = Dictionary.objects.get(id=pk)
    product.delete()

    return Response('Items delete successfully!')
    

def index(request):
   results=Dictionary.objects.all()
#    hint search
   if 'term' in request.GET:
        # results = TuVung.objects.filter(tiengviet__istartswith=request.GET.get('term'))
        results = Dictionary.objects.filter(tiengkho__istartswith=request.GET.get('term'))
        titles = list()
        # for tv in results:
        #     titles.append(tv.tiengviet)
        for tv in results:
            titles.append(tv.tiengkho)
        return JsonResponse(titles, safe=False)

   if request.method == 'POST':
        search = request.POST.get('search')
        if request.POST.get('vk'):
            results = Dictionary.objects.filter(Q(tiengviet__icontains=search))  
        elif request.POST.get('kv'):
            results = Dictionary.objects.filter(Q(tiengkho__icontains=search))
        context = {
            'search':search,
            'result':results,
        }
        return render(request, 'dictionary/index.html',context)
    
   return render(request, 'dictionary/index.html', {"Dictionary": results})



def signin(request):
    forms = LoginForm()
    if request.method == 'POST':
        forms = LoginForm(request.POST)
        if forms.is_valid():
            username = forms.cleaned_data['username']
            password = forms.cleaned_data['password']
            user = authenticate(username=username, password=password)
            if user:
                login(request, user)
                # return HttpResponseRedirect('/home')
                return redirect('dictionary:dictionary')
    context = {
        'form': forms
    }
    
    return render(request, 'dictionary/login.html', context)

def signup(request):
    forms = RegistrationForm()
    if request.method == 'POST':
        forms = RegistrationForm(request.POST)
        if forms.is_valid():
            firstname = forms.cleaned_data['firstname']
            lastname = forms.cleaned_data['lastname']
            email = forms.cleaned_data['email']
            username = forms.cleaned_data['username']
            password = forms.cleaned_data['password']
            confirm_password = forms.cleaned_data['confirm_password']
            if password == confirm_password:
                try:
                    User.objects.create_user(username=username, password=password, email=email, first_name=firstname, last_name=lastname)
                    # return HttpResponseRedirect('/home')
                    return redirect('dictionary:dictionary')
                except:
                    context = {
                        'form': forms,
                        'error': 'This Username Already exists!'
                    }
                    return render(request, 'dictionary/register.html', context)
    context = {
        'form': forms
    }
    return render(request, 'dictionary/register.html', context)