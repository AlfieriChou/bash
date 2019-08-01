FROM node:10.16-alpine

RUN mkdir /home/app/
WORKDIR /home/app/
ADD . /home/app/

RUN cd /home/app/ && npm install yarn -g && yarn

EXPOSE 3000

CMD yarn start
