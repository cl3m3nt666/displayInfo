#!/usr/bin/env python

import socket
from flask import Flask, render_template
app = Flask(__name__)

@app.route("/")
def index():
    s = socket.gethostname()
    ip = socket.gethostbyname(socket.gethostname())
    return render_template("index.html", s = s, ip = ip )


if __name__ == '__main__':
    app.run(host='0.0.0.0')
