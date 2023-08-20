FROM ruby:3.2.0-alpine

RUN apk --no-cache add build-base git

COPY lib /action/lib
COPY README.md LICENSE entrypoint.sh /

RUN gem install bundler:2.4.19

ENTRYPOINT ["/entrypoint.sh"]
