"""
markdown filter
"""

from django import template
register = template.Library()

from markdown2 import markdown

@register.filter(name='md')
def md(value):
    try:
        return markdown(value)
    except Exception:
        return value