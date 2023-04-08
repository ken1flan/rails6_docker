FROM ruby:3.0.5

RUN apt-get update -qq && apt-get install -y nodejs npm && npm install -g yarn

WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install
COPY . /app
