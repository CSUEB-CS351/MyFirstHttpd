FROM httpd:2.4
RUN useradd -ms /bin/bash student
RUN apt-get update
RUN apt-get install -y nano less man-db manpages-dev python
RUN apt-get upgrade -y
WORKDIR /home/student
