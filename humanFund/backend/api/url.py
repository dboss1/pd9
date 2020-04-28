from django.urls import path, include
from . import views
from rest_framework import routers

router = routers.DefaultRouter()
router.register('backend/userinfo',views.UserInfoView)
router.register('backend/service',views.ServiceView)
router.register('backend/subscriptiontype',views.SubscriptionTypeView)
router.register('backend/transferredsubscription',views.TransferredSubscriptionView)
router.register('backend/subscriber',views.SubscriberView)
router.register('backend/office',views.OfficeView)
router.register('backend/officerview',views.OfficerView)
router.register('backend/organizationview',views.OrganizationView)
router.register('backend/organizationmemberview',views.OrganizationMemberView)

app_name = 'backend'

urlpatterns = [ 
    path('',include(router.urls))
    ]
