from django.shortcuts import render, get_object_or_404,redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from .forms import CreateUserForm
# Create your views here.
def home(request):
    return render(request, "front/home.html",{"title":"Home"})

def about(request):
    return render(request, "front/about.html",{"title":"About"})

def apply(request):
    return render(request, 'front/apply.html',{"title":"Apply"})



def mylogin(request):
    if request.user.is_authenticated:
        return redirect('/')
    if request.method == 'POST':
        utxt = request.POST.get('username')
        upass = request.POST.get('password')
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
        form  = CreateUserForm(request.POST)
        if form.is_valid():
            form.save()
            uname = form.cleaned_data.get('username')
            passwd = form.cleaned_data.get('password1')
            user = authenticate(username = uname,password = passwd)
            login(request, user)
            return redirect('/')
    form = CreateUserForm()

    context = {"title":"Register",'form':form}
    return render(request, 'front/register.html',context)

def mylogout(request):
    logout(request)
    return redirect('/')
