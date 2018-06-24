# django-commadecimal

Allow to use comma and period as separator in django forms.

# Install

~~~
pip install django-commadecimal
~~~

**Note:** I have tested it with django==1.11.

# Usage

The commadecimal packages contains a module widgets that contains the CommaWidget class. 
Such a class should replace the DecimalField widget.

Example of basic usage:

~~~python
from django import forms
from commadecimal.widgets import CommaDecimal

class ExampleForm(forms.Form):
    value = forms.DecimalField(help_text='''Some decimal 
    value with comma or period.''', widget=CommaDecimal)

~~~

If you were using ModelForm then you could just do:

~~~python
class ModelName(forms.ModelForm):
    class Meta:
        # Other attributes here.
        widgets = {'fieldname': CommaDecimal}
~~~

The repository contains the demo project whose core_app application implements
a working example of commadecimal application.



