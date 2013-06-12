# To build:
# 1. Install docker (http://docker.io)
# 2. Checkout source: git clone http://github.com/metalivedev/isawesome
# 3. Build container: docker build -t github.com/metalivedev/isawesome .
# 4. Run it: docker run github.com/metalivedev/isawesome
# 
from ubuntu:12.10
maintainer Andy Rothfusz <andy@dotcloud.com>
version 1.0
docker-version 0.4.0
run apt-get update
run apt-get install -y -q nginx
run rm /etc/nginx/sites-enabled/default
run echo "daemon off;" >> /etc/nginx/nginx.conf
add . /src
run cp /src/nginx.conf /etc/nginx/sites-enabled/isawesome
expose 80
cmd ["nginx"]
