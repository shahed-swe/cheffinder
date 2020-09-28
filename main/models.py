from django.db import models

# Create your models here
class ChefCreate(models.Model):
    user_name = models.CharField(max_length=120,blank=True,null=True)
    first_name = models.CharField(max_length=120,blank=True,null=True)
    last_name = models.CharField(max_length=120,blank=True,null=True)
    email = models.CharField(max_length=120,blank=True,null=True)
    phone = models.CharField(max_length=20,blank=True,null=True)
    address = models.CharField(max_length=120,blank=True,null=True)
    location = models.CharField(max_length=120,blank=True,null=True)
    cv = models.FileField(upload_to='cv/')

    class Meta:
        db_table = 'chef_create'
    
    def __str__(self):
        return self.user_name + '|' + str(self.pk)


class ApprovalChefCreate(models.Model):
    user_name = models.CharField(max_length=120,blank=True,null=True)
    first_name = models.CharField(max_length=120,blank=True,null=True)
    last_name = models.CharField(max_length=120,blank=True,null=True)
    email = models.CharField(max_length=120,blank=True,null=True)
    phone = models.CharField(max_length=20,blank=True,null=True)
    address = models.CharField(max_length=120,blank=True,null=True)
    location = models.CharField(max_length=120,blank=True,null=True)
    cv = models.FileField(upload_to='cv/')

    class Meta:
        db_table = 'approval_chef_create'
    
    def __str__(self):
        return self.user_name + '|' + str(self.pk)


