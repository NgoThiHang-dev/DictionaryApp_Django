from django.db import models

# Create your models here.
class Course(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField(max_length=1000, null=True)
    image = models.ImageField(upload_to='image', null=True)

    class Meta:
        # managed = False
        db_table = 'courses'
        
    def __str__(self):
        return self.title