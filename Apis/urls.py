from django.urls import path
from .views import *

urlpatterns = [
    path('get-verdict', GetTheVerdict.as_view()),
    path('get-outputs', GetTheOutputs.as_view())
]