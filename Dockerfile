FROM node:20.10.0

# 앱 디렉토리 생성 및 설정
WORKDIR /app

COPY ./package.json .

RUN npm install

COPY ./models ./models

COPY ./sequelize ./sequelize

COPY ./index.js .

COPY ./healthcheck .

# 포트 열기
EXPOSE 3000

# 앱 실행
CMD ["npm", "start"]