"""
prop filter
"""

from django import template
register = template.Library()

@register.filter(name='prop', is_safe=True)
def prop(value, arg):
    try:
        if not arg:
            return value
        else:
            try:
                return getattr(value, arg)
            except Exception:
                return ''
    except Exception:
        return value