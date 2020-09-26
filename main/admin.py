from django.contrib import admin
from django.contrib.auth.models import Permission
from main.models import ChefUser


# Register your models here.
admin.site.register(Permission)
admin.site.register(ChefUser)