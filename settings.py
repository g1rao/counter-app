import os

# Server settings
SERVER_HOST = "0.0.0.0"
SERVER_PORT = os.environ.get("SERVER_PORT", 9000)

# Redis settings
# REDIS_HOST = os.environ.get("REDIS_HOST", "localhost")
REDIS_HOST = "0.0.0.0"
REDIS_PORT = 6379
REDIS_PWD = "qwerty"
