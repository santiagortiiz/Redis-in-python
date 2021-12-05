-- CREATE A KEY, ASSIGN VALUE AND CHECK IT
SET key value
GET key
EXISTS key value

SET key:another_key value


-- INTEGERS
SET key int_value
INCR key
INCR key amount
DECR key
DECR key amount


-- EXPIRATION TIME AND TTL (TIME TO LIVE)
SET key value
EXPIRE key seconds

SET key value EX seconds -- or (atomic)

TTL key -- (get remaining time of the key)

-- TTL = -2 means the key does not exists anymore
-- TTL = -1 means the key will never expire
-- when you SET a key, it's TTL will be reset to -1

-- Remove EXP
PERSIST key


-- LISTS

-- Add elements to a key 
-- (RPUSH and LPUSH return the length of the list after the operations)
RPUSH key value
LPUSH key value

-- Check length of a list
LLEN key

-- Retrieve elements from a list
LRANGE key start_index end_index -- LRANGE key 0 -1 retrieves the whole lists

-- Remove elements from a list
LPOP key -- remove first and return it
RPOP key -- remove last and return it


-- SETS

-- add
SADD key value
SADD key value_1 value_2 value_n -- return inserted members
SUNION set_1 set_2

-- retrieve
SISMEMBER key value -- check if the value exists in a set
SMEMBERS key -- retrieve all members of the set
SRANDMEMBER key number_of_elements -- retrieve a number of elements from a set (random)

-- remove
SREM key value-- returns 1 or 0 if the element was there or not


-- SORTED SETS
ZADD key score value -- score is the score value to order the set
ZRANGE start_index end_index -- retrieve like the list method LRANGE


-- HASHES TO REPRESENT OBJECTS

HSET key attribute value
HSET key attribute_1 value_1 attribute_2 value_2 attribute_3 value_3
HGETALL key attribute

-- modification of integer values
HSET key integer_value
HINCRBY key value amount
HDEL key value

