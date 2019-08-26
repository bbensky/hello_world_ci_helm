FROM ruby:2.6.3

RUN apt-get update && \
    apt-get install -y net-tools

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install --system

ADD . /app
RUN bundle install --system

EXPOSE 80

CMD ["ruby", "helloworld.rb"]