FROM ruby:3.2.0
LABEL maintainer="Julian Nonino <noninojulian@gmail.com>"

RUN apt-get update && \
    apt-get install -y git nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile

RUN gem update --system && \
    bundle config set --local system 'true' && \
    bundle install
