FROM node:16.3-alpine

RUN npm i -g newman

ENTRYPOINT [ "newman" ]
