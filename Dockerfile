FROM mysql
RUN apt update -y
VOLUME /home/sagore /var/lib/mysql/data
ENV MYSQL_ROOT_PASSWORD 12345
CMD ["/bin/bash"]
