
FROM ruby:3.1.3
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com

ENV RAILS_ENV=production
WORKDIR /app
ADD Gemfile /app
ADD Gemfile.lock /app
ADD vendor/cache /app/vendor/cache
RUN bundle config set --local without 'development test'
# RUN bundle install
RUN bundle install --local

COPY . .
ENTRYPOINT bundle exec puma




# FROM ruby:3.1.3
# ENV RAILS_ENV=production
# RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com
# WORKDIR /app
# ADD Gemfile /app
# ADD Gemfile.lock /app
# # ADD vendor/cache /app/vendor/cache
# RUN bundle config set --local without 'development test'
# RUN bundle install --local

# ADD tangpoetry-*.tar.gz ./
# ENTRYPOINT bundle exec puma

