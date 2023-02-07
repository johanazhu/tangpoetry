
FROM ruby:3.1.3
WORKDIR /app
COPY . .
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com

ENV RAILS_ENV=production
RUN bundle config set --local without 'development test'
RUN bundle install
ENTRYPOINT bundle exec puma
