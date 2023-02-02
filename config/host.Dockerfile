FROM ruby

ENV RAILS_ENV production
RUN mkdir /tangpoetry
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com
WORKDIR /tangpoetry
ADD tangpoetry-*.tar.gz ./
RUN bundle config set --local without 'development test'
RUN bundle install
ENTRYPOINT bundle exec puma