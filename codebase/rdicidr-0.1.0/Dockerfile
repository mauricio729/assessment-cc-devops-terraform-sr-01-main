FROM node:18-alpine

# create dir
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app

# build dependencies
COPY ./package*.json ./https://gitlab.com/Pilodev/assessment-cc-devops-terraform-sr-01
USER node
RUN npm install

# create static configuration for app
RUN echo "variableData=Dockerfile-Build" >> .env

# copy in source code
COPY --chown=node:node ./ ./

# start express server
CMD [ "npm", "start" ]