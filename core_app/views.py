from django.shortcuts import render
from django.views.generic import View
from . import forms

# Create your views here.
class Index(View):
    def get(self, request):
        form = forms.ExampleForm()
        return render(request, 'core_app/index.html', {'form':form})

    def post(self, request):
        form = forms.ExampleForm(request.POST)

        if not form.is_valid():
            return render(request, 'core_app/index.html', {'form':form})

        return render(request, 'core_app/show-value.html', 
        {'value':form.cleaned_data['value']})

