from flask import Flask
app = Flask("checkiamok")


@app.route("/")
def hello():
    return "Hello World!"
