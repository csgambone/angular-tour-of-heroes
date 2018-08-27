FROM node:alpine

LABEL maintainer="x"

RUN apk add --update nodejs nodejs-npm

# set working directory
WORKDIR /usr/src/app

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# add app
COPY . /usr/src/app
RUN npm install

EXPOSE 4200

# start app
CMD ng serve --host 0.0.0.0