from django import forms
from . import static
from backend.models import *

class RegisForm(forms.ModelForm):
    class Meta:
        model = UserInfo
        fields = '__all__'

class Login(forms.Form):
    username = forms.CharField(label='Username', max_length=20, widget=forms.TextInput(attrs={'class' : 'humanInput', 'placeholder' : 'Username'}))
    password = forms.CharField(label='Password', max_length=20, widget=forms.PasswordInput(attrs={'class' : 'humanInput', 'placeholder' : 'Password'}))

class OfficeForm(forms.ModelForm):
    class Meta:
        model = Office
        fields = '__all__'