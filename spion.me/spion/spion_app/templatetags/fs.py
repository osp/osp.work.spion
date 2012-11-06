"""
markdown filter
"""

from django import template
register = template.Library()

@register.filter(name='fs')
def fs(value):
    try:
        sentences = value.split('.')
        return ''.join([sentences[0], '.'])
    except Exception:
        return value