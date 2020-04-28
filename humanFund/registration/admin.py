from django.contrib import admin
from backend.models import *

admin.site.site_header = 'Human Fund Administrative Portal. Adminstration for people.'

admin.site.register(Office)
admin.site.register(Officer)
admin.site.register(Organization)
admin.site.register(OrganizationMember)
admin.site.register(Subscriber)


class OfficAdmin(admin.ModelAdmin):
	list_display = ('officename')
	list_filter = ('officecode')

