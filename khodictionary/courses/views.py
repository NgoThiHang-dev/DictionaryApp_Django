from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .models import Course
# from .serializers import GetAllCourseSerializer
from rest_framework.decorators import api_view
from .serializers import CourseSerializer

from django.template import loader
from django.http import HttpResponse
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger


# Create your views here.
# class GetAllCourseAPIView(APIView):
#     def get(self, request):
#         list_course=Course.objects.all()
#         mydata=GetAllCourseSerializer(list_course, many=True)
#         return Response(data=mydata.data, status=status.HTTP_200_OK)

@api_view(['GET'])   
def apiOverview(request):
    courses_urls={
        'List': 'courses-list/',
        'Detail view': 'courses-detail/<int:id>',
        'Create': 'courses-create/',
        'Update': 'courses-update/<int:id>',
        'Delete': 'courses-delete/<int:id>', 
    }
    return Response(courses_urls)
        

@api_view(['GET'])
def showAll(request):
    courses=Course.objects.all()
    serializer=CourseSerializer(courses, many=True)
    return Response(serializer.data)
 
@api_view(['GET'])
def viewCourse(request, pk):
    course=Course.objects.get(id=pk)
    serializer=CourseSerializer(course, many=False)
    return Response(serializer.data)

@api_view(['POST'])
def CreateCourse(request):
    serializer=CourseSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)

@api_view(['POST'])
def UpdateCourse(request, pk):
    product = Course.objects.get(id=pk)
    serializer = CourseSerializer(instance=product, data=request.data)
    
    if serializer.is_valid():
        serializer.save()
        
    return Response(serializer.data)


@api_view(['GET'])
def DeleteCourse(request, pk):
    product = Course.objects.get(id=pk)
    product.delete()

    return Response('Items delete successfully!')



def index(request):
    template = loader.get_template('courses/course.html')
    course = Course.objects.all()

    # Paging
    paginator = Paginator(course, 8)
    page = request.GET.get('page', 1)
    try:
        courses_paged = paginator.page(page)
    except PageNotAnInteger:
        courses_paged = paginator.page(1)
    except EmptyPage:
        courses_paged = paginator.page(paginator.num_pages)

    context = {"course": courses_paged}
    return HttpResponse(template.render(context, request))