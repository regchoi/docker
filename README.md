# docker(WhatToEatToday docker)

### 사용법 (Docker-compose 이용시)
1. clone docker repository
2. docker-compose up 입력
#
### 사용법 (Dockerfile 이용시)
1. clone docker repository
2. 터미널을 실행시키고 docker 파일로 이동합니다(ls 입력시 init폴더와 Dockerfile, Docker-compose.yml, *.jar파일이 있어야 합니다)
3. docker network create spring-mysql-wtet 입력
4. cd init 입력 (ls 입력시 Dockerfile, wtet.sql이 있어야 합니다)
5. docker build . -t wtet-mysql 입력
6. docker run --name wtet-db -p 3306:3306 --network spring-mysql-wtet -d wtet-mysql 입력
7. cd ../ 입력 (ls 입력시 init폴더와 Dockerfile, Docker-compose.yml, *.jar파일이 있어야 합니다)
8. docker build . -t wtet 입력
9. docker run --name wtet -p 8080:8080 --network spring-mysql-wtet wtet 입력

