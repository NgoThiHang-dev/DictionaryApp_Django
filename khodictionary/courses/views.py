from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
# from .models import Course
from .models import *
from django.http import Http404
from django.contrib.auth.models import User
# from .serializers import GetAllCourseSerializer
from rest_framework.decorators import api_view
from .serializers import CourseSerializer, CourseChepBaiSerializer

from django.template import loader
from django.http import HttpResponse
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger


# Create your views here.
# class GetAllCourseAPIView(APIView):
#     def get(self, request):
#         list_course=Course.objects.all()
#         mydata=GetAllCourseSerializer(list_course, many=True)
#         return Response(data=mydata.data, status=status.HTTP_200_OK)

# api khóa học
@api_view(['GET'])
def apiOverview(request):
    courses_urls = {
        'List': 'courses-list/',
        'Detail view': 'courses-detail/<int:id>',
        'Create': 'courses-create/',
        'Update': 'courses-update/<int:id>',
        'Delete': 'courses-delete/<int:id>',
    }
    return Response(courses_urls)


@api_view(['GET'])
def showAll(request):
    courses = Course.objects.all()
    serializer = CourseSerializer(courses, many=True)
    return Response(serializer.data)


@api_view(['GET'])
def viewCourse(request, pk):
    course = Course.objects.get(id=pk)
    serializer = CourseSerializer(course, many=False)
    return Response(serializer.data)


@api_view(['POST'])
def CreateCourse(request):
    serializer = CourseSerializer(data=request.data)
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


# api couses_chép bài
@api_view(['GET'])
def showCoursesChepBai(request):
    courses = ChepBai.objects.all()
    serializer = CourseChepBaiSerializer(courses, many=True)
    return Response(serializer.data)


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


def course_detail(request, chepbai_id):
    try:
        results = ChepBai.objects.filter(idbai__id__exact=chepbai_id)
        idbai = chepbai_id
        if request.method == 'POST':
            a = request.FILES['baiclient']
            user = user.id
            for u in results:
                b = ChepBai_Client.objects.create(
                    bainguoidung=a, idchepbai_id=u.id)
            b.save()
        context = {
            'chepbai': results,
            'idbai': idbai,
        }
    except ChepBai.DoesNotExist:
        raise Http404("Chua co phan chep bai")
    return render(request, 'courses/course_detail.html', context)


def hoivatraloi(request, hoivatraloi_id):
    try:
        results = HoiVaTraLoi.objects.filter(idbai__id__exact=hoivatraloi_id)
        idbai = hoivatraloi_id
        context = {
            'hoivatraloi': results,
            'idbai': idbai,
        }
    except HoiVaTraLoi.DoesNotExist:
        raise Http404("Chưa có câu hỏi và trả lời")
    return render(request, 'courses/whquestion.html', context)


def damthoai(request, damthoai_id):
    try:
        results = DamThoai.objects.filter(idbai__id__exact=damthoai_id)
        idbai = damthoai_id
        context = {
            'damthoai': results,
            'idbai': idbai,
        }
    except DamThoai.DoesNotExist:
        raise Http404("Chưa có cuộc đàm thoại")
    return render(request, 'courses/damthoai.html', context)


def vietdoanvan(request, vietdoanvan_id):
    try:
        results = VietDoanVan.objects.filter(idbai__id__exact=vietdoanvan_id)
        idbai = vietdoanvan_id
        context = {
            'vietdoanvan': results,
            'idbai': idbai,
        }
    except VietDoanVan.DoesNotExist:
        raise Http404("Chưa có từ vựng")
    return render(request, 'courses/vietdoanvan.html', context)

def tuvung(request, tuvung_id):
    try:
        results = TuVung.objects.filter(idbai__id__exact=tuvung_id)
        idbai = tuvung_id
        context = {
            'tuvung':results,
            'idbai':idbai,
        }
    except TuVung.DoesNotExist:
        raise Http404("Chưa có từ vựng")
    return render(request, 'courses/tuvung.html', context)

def datcauhoi(request, datcauhoi_id):
    try:
        results = DatCau.objects.filter(idbai__id__exact=datcauhoi_id)
        idbai = datcauhoi_id
        context = {
            'datcauhoi':results,
            'idbai':idbai,
        }
    except TuVung.DoesNotExist:
        raise Http404("Chưa có đặt câu hỏi nào")
    return render(request, 'courses/datcauhoi.html', context)