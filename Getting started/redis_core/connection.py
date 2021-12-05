# Standard libraries
import os
from dotenv import load_dotenv
load_dotenv()

# Redis
import redis

# Credentials
HOST = os.environ.get('REDIS_HOST')
PORT = os.environ.get('REDIS_PORT')
USER = os.environ.get('REDIS_USER')
PASSWORD = os.environ.get('REDIS_PASSWORD')

def get_redis_connection(hostname=HOST, port=PORT, username=USER, password=PASSWORD):
    client_kwargs = {
        "host": hostname,
        "port": port,
        "decode_responses": True
    }
    if username:
        client_kwargs["username"] = username
    if password:
        client_kwargs["password"] = password

    return redis.Redis(**client_kwargs)