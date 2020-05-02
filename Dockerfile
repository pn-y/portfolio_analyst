FROM elixir:1.10

RUN mkdir -p /app
WORKDIR /app

RUN apt-get update \
    && apt-get install -y \
      screen curl build-essential vim postgresql-client npm nodejs inotify-tools \
    && apt-get clean

RUN npm install

ADD . /app

ARG APP_VERSION
ENV APP_VERSION=${APP_VERSION}

EXPOSE 1488
