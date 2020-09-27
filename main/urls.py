from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.home, name='home'),
    url(r'^about/$',views.about, name='about'),
    url(r'^apply/$',views.apply, name='apply'),
    url(r'^login/$',views.mylogin, name='mylogin'),
    url(r'^register/$',views.myregister, name='myregister'),
    url(r'^logout/$',views.mylogout, name='mylogout'),
]