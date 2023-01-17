from flask import Flask
from redis import Redis
import socket

app = Flask(__name__)
redis = Redis(host='redis', port=6379)

@app.route('/')
def hello():
    count = redis.incr('hits')
    return 'Hello World! I have been seen {} times. From server {}.\n'.format(count, socket.gethostname())

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000, debug=True)