from django.db import models

class UserInfo(models.Model):
    username = models.CharField(primary_key=True, max_length=20)
    password = models.CharField(max_length=20,default='password')
    fName = models.CharField(max_length=20)
    mName = models.CharField(max_length=20)
    lName = models.CharField(max_length=20)
    email = models.CharField(max_length=20)
    gender = models.CharField(max_length=20)    #Needs to be ENUM
    address = models.CharField(max_length=20)
    city = models.CharField(max_length=20)
    state = models.CharField(max_length=20)
    cellPhone = models.CharField(max_length=20)
    country = models.CharField(max_length=20)
    dob = models.DateField()
    
class Service(models.Model):
    servicecode = models.AutoField(primary_key=True)
    servicesname = models.CharField(max_length=20)
    description = models.CharField(max_length=20)
    premium = models.CharField(max_length=20)
    allocation = models.CharField(max_length=20)
    
class SubscriptionType(models.Model):
    subscriptiontypecode = models.AutoField(primary_key=True)
    subscriptiontypename = models.CharField(max_length=20)
    
    
class TransferredSubscription(models.Model):
    transferID  = models.AutoField(primary_key=True)
    transferFrom = models.CharField(max_length=20)
    transferTo = models.CharField(max_length=20)
    requestDate = models.DateField()
    transferDate = models.DateField()
    subscriberID = models.ForeignKey('UserInfo',on_delete=models.CASCADE)

class Subscriber(models.Model):
    subscriberID = models.AutoField(primary_key=True)
    username = models.ForeignKey('UserInfo',on_delete=models.CASCADE)
    subscriptiontypecode = models.ForeignKey('SubscriptionType',on_delete=models.CASCADE)
    servicecode = models.ForeignKey('Service',on_delete=models.CASCADE)
    requestdate = models.DateField()
    startdate = models.DateField()
    enddate = models.DateField()
    motifofcancellation = models.CharField(max_length=20)
    #beneficiaryID = models.ForeignKey('',on_delete=models.CASCADE)

class Office(models.Model):
    officecode = models.AutoField(primary_key=True)
    officename  = models.CharField(max_length=20)
    attribution = models.CharField(max_length=20)
    
class Officer(models.Model):
    officecode = models.ForeignKey('Office',on_delete=models.CASCADE)
    subscriberID = models.ForeignKey('Subscriber',on_delete=models.CASCADE)
    startdate = models.DateField()
    enddate = models.DateField()

class Organization(models.Model):
    organizationCode = models.AutoField(primary_key=True)
    organizationname = models.CharField(max_length=20)
    description= models.TextField(max_length=20)
    datejoined = models.DateField()
    address1 = models.CharField(max_length=20)
    address2 = models.CharField(max_length=20)
    city = models.CharField(max_length=20)
    state = models.CharField(max_length=20)
    zipcode = models.CharField(max_length=20)
    phonenumber = models.CharField(max_length=20)
    
class OrganizationMember(models.Model):
    organizationCode = models.ForeignKey('Organization',on_delete=models.CASCADE)
    subscriberID = models.ForeignKey('Subscriber',on_delete=models.CASCADE)
    startdate = models.DateField()
    enddate = models.DateField()
    nativecountry = models.CharField(max_length=20)
    citizenship = models.CharField(max_length=20)
    isdelegate =  models.BooleanField(default=False)