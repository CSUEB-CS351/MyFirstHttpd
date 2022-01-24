FROM httpd:2.4
RUN useradd -ms /bin/bash student
WORKDIR /home/student
