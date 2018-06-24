from django.forms.widgets import TextInput

class CommaDecimal(TextInput):
    def __init__(self, *args, **kwargs):
        super(CommaDecimal, self).__init__(*args, **kwargs)
        self.attrs['pattern'] = "[0-9,.]*"
        self.attrs['type'] = 'Text'

    def value_from_datadict(self, *args, **kwargs):
        value = super(CommaDecimal, self).value_from_datadict(*args, **kwargs)
        return value.replace(',', '.')

