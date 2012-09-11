#!/usr/bin/env python
# -*- coding: utf-8 -*-

import codecs
import json
from flask import Flask, jsonify, render_template, request, g
app = Flask(__name__)

@app.before_request
def before_request():
    """Read the json each time the page is displayed"""
    f = codecs.open('widgets-site.json', 'r', 'utf-8')
    g.widgets = json.loads(f.read())
    f.close()

@app.route('/')
def index():
    return render_template('index-overlap.html', widgets=g.widgets)

@app.route('/store', methods = ['POST'])
def store():
    """foo = json.loads(request.data)
    w = codecs.open('widgets-site.json', 'w', 'utf-8')
    w.write(json.dumps(foo, indent=2, ensure_ascii=False))
    w.close()"""
    return "Not saved"

if __name__ == "__main__":
    app.run(debug=True)
