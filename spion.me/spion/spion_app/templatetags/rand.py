"""
markdown filter
"""

from django import template
register = template.Library()

import random

@register.filter(name='rand')
def rand_(value, arg):
    a = int(value)
    b = int(arg)
    return str(random.randrange(a,b))