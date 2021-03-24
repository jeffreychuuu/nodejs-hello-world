# pull official base image
FROM node:15.12.0-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY index.js ./
RUN npm install

# add app
COPY . ./app

# start app
CMD ["npm", "start"]