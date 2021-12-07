from django.shortcuts import render
from courses.models import *
from .models import *
from django.http import Http404
import random
from django.contrib.postgres.fields import ArrayField, array


# Create your views here.
def index(request):
    exam = BaiKiemTra.objects.all()
    context = {
        'exam': exam,
    }
    return render(request, 'exam/exam.html', context)


def exam_detail(request, exam_id):
    try:
        results = list(CauHoiKiemTra.objects.filter(
            idbai__id__contains=exam_id))
        
        random.shuffle(results)
        
        # option1 = list(CauHoiKiemTra.objects.raw('SELECT * FROM baikiemtra, cauhoikiemtra WHERE baikiemtra.id=cauhoikiemtra.id'))
        # random.shuffle(option1)
        
        # option1 = CauHoiKiemTra.objects.raw('SELECT * FROM baikiemtra, cauhoikiemtra WHERE baikiemtra.id=cauhoikiemtra.id')
        # option2 = CauHoiKiemTra.objects.raw('SELECT * FROM baikiemtra, cauhoikiemtra WHERE baikiemtra.id=cauhoikiemtra.id')
        # option3 = CauHoiKiemTra.objects.raw('SELECT * FROM baikiemtra, cauhoikiemtra WHERE baikiemtra.id=cauhoikiemtra.id')
        # option4 = CauHoiKiemTra.objects.raw('SELECT * FROM baikiemtra, cauhoikiemtra WHERE baikiemtra.id=cauhoikiemtra.id')
        
        # op1 = random.choice(option1)
        # op2 = random.choice(option2)
        # op3 = random.choice(option3)
        # op4 = random.choice(option4)
        
        # results = ['option1', 'option2', 'option3', 'option4']
        
        
        # results = random.sample(arr, 4)
        
        
        
        # recent_course = results[:3]
        # results=CauHoiKiemTra.objects.raw('''SELECT * FROM baikiemtra, cauhoikiemtra WHERE baikiemtra.id=cauhoikiemtra.id''')

        

        # option1=CauHoiKiemTra.objects.order_by('trueanswer')[0:1].get()
        # option1 = CauHoiKiemTra.objects.raw(
        #     '''SELECT * FROM baikiemtra, cauhoikiemtra WHERE baikiemtra.id=cauhoikiemtra.id''')
        # option2 = CauHoiKiemTra.objects.raw(
        #     '''SELECT DISTINCT * FROM cauhoikiemtra WHERE question IS NOT NULL ORDER BY RAND() LIMIT 1''')
        # option3 = CauHoiKiemTra.objects.raw(
        #     '''SELECT DISTINCT * FROM cauhoikiemtra WHERE question IS NOT NULL ORDER BY RAND() LIMIT 1''')
        # option4 = CauHoiKiemTra.objects.raw(
        #     '''SELECT DISTINCT * FROM cauhoikiemtra WHERE question IS NOT NULL ORDER BY RAND() LIMIT 1''')
        

        # op1 = random.choice(option1)
        # op2 = random.choice(option2)
        # op3 = random.choice(option3)
        # op4 = random.choice(option4)

        # recent_course = [op1, option2, option3, option4]
        # recent_course = arr[:4]
        # recent_course = arr[:4]
        # random.shuffle(arr)
        # recent_course = random.sample(arr, 4)
        # recent_course = random.sample(arr, 4)

        # while (1):
        #     a = random.choice(results)
        #     b = random.choice(option1)
        #     c = random.choice(option1)
        #     d = random.choice(option1)
        #     arr = [a, b, c, d]
        #     if a!=b and a!=c and a!=d and b!=c and b!=d and c!=d:
        #         print (a)
        #         print (b)
        #         print (c)
        #         print (d)
        #         # arr = [a, b, c, d]
        #         # results = random.sample(arr, 4)
        #         break
        

        context = {
            'exam': results,
            # 'recent_course': recent_course,
            # 'option1': option1,
            # 'option2': option2,
            # 'option3': option3,
            # 'option4': option4,
        }
    except CauHoiKiemTra.DoesNotExist:
        raise Http404("Chưa có câu hỏi trong bài kiểm tra này")
    return render(request, 'exam/exam_detail.html', context)
