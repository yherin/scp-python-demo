from flask import Flask
import os

app = Flask(__name__)

port = int(os.getenv("PORT"))

@app.route("/")
def hello():
    return "Hello, World from Jack! I am running on port {}.".format(port)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=port)
