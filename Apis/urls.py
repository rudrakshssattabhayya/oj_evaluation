from django.urls import path
from .views import *

urlpatterns = [
    path('run-code', CPPFileProcessingView.as_view()),
]