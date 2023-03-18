FROM ruby:3.0.5

# RUN apt-get update -qq && apt-get install -y nodejs mysql-client
RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install
COPY . /app
