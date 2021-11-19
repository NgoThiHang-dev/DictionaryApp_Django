from rest_framework import serializers
from .models import Course
from .models import ChepBai

# class GetAllCourseSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Course
#         fields = ('id', 'title', 'description', 'image')
        
class CourseSerializer(serializers.ModelSerializer):
    class Meta:
        model = Course
        fields = ('id', 'title', 'description', 'image')
        
class CourseChepBaiSerializer(serializers.ModelSerializer):
    class Meta:
        model = ChepBai
        fields = ('__all__')