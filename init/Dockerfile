FROM mysql:8.0.32
ENV TZ Asia/Seoul
ENV MYSQL_ROOT_USER=root
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=wtet
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ADD ./wtet.sql /docker-entrypoint-initdb.d/wtet.sql
EXPOSE 3306