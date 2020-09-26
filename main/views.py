from django.shortcuts import render, get_object_or_404,redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from .forms import CreateUserForm
# Create your views here.
def home(request):
    return render(request, "front/home.html",{"title":"Home"})

def about(request):
    return render(request, "front/about.html",{"title":"About"})

def mylogin(request):
    if request.user.is_authenticated:
        return redirect('/')
    if request.method == 'POST':
        utxt = request.POST.get('username')
        upass = request.POST.get('password')
        print(utxt,upass)
        if utxt != "" and upass != "":
            user = authenticate(username=utxt, password=upass)
            if user != None:
                login(request, user)
                return redirect('/')
    context = {"title": "Login"}
    return render(request, 'front/login.html',context)

def myregister(request):
    if request.user.is_authenticated:
        return redirect('/')
    if request.method == "POST":
        uname = request.POST.get('username')
        f_name = request.POST.get('first_name')
        l_name = request.POST.get('last_name')
        email = request.POST.get('email')
        password = request.POST.get('password1')
        user = User.objects.create_user(username=uname,first_name=f_name,last_name=l_name,email=email,password=password)
        return redirect('/login')
    form = CreateUserForm()

    context = {"title":"Register",'form':form}
    return render(request, 'front/register.html',context)

def mylogout(request):
    logout(request)
    return redirect('/')
