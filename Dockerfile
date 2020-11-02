FROM ubuntu:xenial
RUN apt update && apt install -y shellinabox openssl ssh
RUN apt install -y python
EXPOSE 4200
CMD ["shellinaboxd", "-t", "-s", "/:root:root:/:/usr/bin/python", "--css", "/etc/shellinabox/options-available/00_White On Black.css"]
