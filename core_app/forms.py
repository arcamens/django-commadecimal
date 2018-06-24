from django import forms
from commadecimal.widgets import CommaDecimal

class ExampleForm(forms.Form):
    value = forms.DecimalField(help_text='''Some decimal 
    value with comma or period.''', widget=CommaDecimal)


