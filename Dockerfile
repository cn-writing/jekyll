FROM ruby:3.1.2-alpine
LABEL maintainer="Julian Nonino <noninojulian@gmail.com>"

RUN apk update && \
    apk --no-cache --update add build-base git nodejs && \
    rm -rf /var/cache/apk/*

COPY Gemfile Gemfile

RUN bundle config set --local system 'true' && \
    bundle install

# COPY entrypoint.sh /entrypoint.sh

# ENTRYPOINT ["/entrypoint.sh"]
