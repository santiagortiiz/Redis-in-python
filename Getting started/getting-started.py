# Modules
from redis_core import get_redis_connection

if __name__ == '__main__':

    r = get_redis_connection()
    r.set('foo', 'bar')
    r.get('foo')