FROM elixir:latest

ENV APP /app

RUN mkdir $APP
ADD . $APP
WORKDIR $APP

RUN mix local.hex --force
RUN mix archive.install hex phx_new 1.5.7 --force
