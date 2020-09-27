from django.db import models

# Create your models here
class ChefCreate(models.Model):
    user_name = models.CharField(max_length=120,blank=True,null=True)
    fist_name = models.CharField(max_length=120,blank=True,null=True)
    last_name = models.CharField(max_length=120,blank=True,null=True)
    email = models.CharField(max_length=120,blank=True,null=True)
    phone = models.CharField(max_length=20,blank=True,null=True)
    password = models.CharField(max_length=120,blank=True,null=True)
    location = models.CharField(max_length=120,blank=True,null=True)
    cv = models.FileField(upload_to='cv/')

    class Meta:
        db_table = 'chef_create'