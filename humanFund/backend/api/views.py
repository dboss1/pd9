from django.shortcuts import render
from rest_framework import viewsets
from ..models import *
from .serializers import *

class UserInfoView(viewsets.ModelViewSet): 
    queryset = UserInfo.objects.all() 
    serializer_class = UserInfoSerializer
    
class ServiceView(viewsets.ModelViewSet): 
    queryset = Service.objects.all() 
    serializer_class = ServiceSerializer

class SubscriptionTypeView(viewsets.ModelViewSet): 
    queryset = SubscriptionType.objects.all() 
    serializer_class = SubscriptionTypeSerializer
   
class TransferredSubscriptionView(viewsets.ModelViewSet): 
    queryset = TransferredSubscription.objects.all() 
    serializer_class = TransferredSubscriptionSerializer

class SubscriberView(viewsets.ModelViewSet): 
    queryset = Subscriber.objects.all() 
    serializer_class = SubscriberSerializer  

class OfficeView(viewsets.ModelViewSet): 
    queryset = Office.objects.all() 
    serializer_class = OfficeSerializer

class OfficerView(viewsets.ModelViewSet): 
    queryset = Officer.objects.all() 
    serializer_class = OfficerSerializer

class OrganizationView(viewsets.ModelViewSet): 
    queryset = Organization.objects.all() 
    serializer_class = OrganizationSerializer

class OrganizationMemberView(viewsets.ModelViewSet): 
    queryset = OrganizationMember.objects.all() 
    serializer_class = OrganizationMemberSerializer

