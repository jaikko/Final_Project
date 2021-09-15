from django.conf.urls import include
from django.contrib import admin
from django.urls import path

from . import views
app_name= 'main'

urlpatterns = [
    path('', views.index, name='index'),
    path('', include ('lettings.urls')),
    path('', include ('profiles.urls')),
    path('admin/', admin.site.urls),
]
