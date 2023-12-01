#Docker image
From mysql:latest
# root password
ENV MYSQL_ROOT_PASSWORD=p123
# copy init.sql to docker-entrypoint-initdb.d
COPY ./init.sql /docker-entrypoint-initdb.d/
# copy data.csv to docker-entrypoint-initdb.d
COPY ./data.csv /var/lib/mysql-files/data.csv
