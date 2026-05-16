FROM node:18-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app

COPY ./package*.json ./https://gitlab.com/Pilodev/assessment-cc-devops-terraform-sr-01
USER node
RUN npm install

RUN echo "variableData=Dockerfile-Build" >> .env

COPY --chown=node:node ./ ./

CMD [ "npm", "start" ]
