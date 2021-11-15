from rest_framework import serializers
from .models import Course

# class GetAllCourseSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Course
#         fields = ('id', 'title', 'description', 'image')
        
class CourseSerializer(serializers.ModelSerializer):
    class Meta:
        model = Course
        fields = ('id', 'title', 'description', 'image')