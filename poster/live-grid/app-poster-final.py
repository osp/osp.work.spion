#!/usr/bin/env python
# -*- coding: utf-8 -*-

import codecs
import json
import os

from flask import Flask, render_template, request, g
app = Flask(__name__)


@app.route('/')
def index():
    f = codecs.open('index.html', 'r', 'utf-8')
    res = f.read()
    f.close()
    return res

if __name__ == "__main__":
    app.run(debug=True)
