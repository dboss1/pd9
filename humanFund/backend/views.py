from django.shortcuts import render
from rest_framework import viewsets
from .models import *
from .api.serializers import *


class UserInfoView(viewsets.ModelViewSet):
    queryset = UserInfo.objects.all()
    serializer_class = UserInfoSerializer