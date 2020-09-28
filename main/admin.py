from django.contrib import admin
from django.contrib.auth.models import Permission
from main.models import ChefCreate
from main.models import ApprovalChefCreate


# Register your models here.
admin.site.site_header = 'Admin Control'
admin.site.register(ChefCreate)
admin.site.register(ApprovalChefCreate)