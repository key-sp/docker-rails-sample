FROM ruby:3.0.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile* /myapp/
# COPY Gemfile.lock /myapp/Gemfile.lock

RUN gem install bundler
RUN bundle install
COPY . /myapp

