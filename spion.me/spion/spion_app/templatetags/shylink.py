"""
Add hyphenation support to hyperlinks
"""

from django import template
register = template.Library()

@register.filter(name='shylink')
def shylink(value):
    return  value.replace("/","/&shy;")
