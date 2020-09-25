# Step:1 Ubuntu (base image)
FROM ubuntu:latest

# Step:2 Nginx install
RUN apt-get update && apt-get install -y -q nginx

# Step:3 file copy
COPY index.html /var/www/html/

EXPOSE 80

# Step:4 Nginx start (container 실행시)
CMD ["nginx", "-g", "daemon off;"]
