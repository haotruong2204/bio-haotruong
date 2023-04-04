ARG RUBY_VERSION=3.2.0
FROM ruby:$RUBY_VERSION

RUN apt-get update -qq && \
  apt-get install -y build-essential libvips bash bash-completion libffi-dev tzdata nodejs npm yarn && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY Gemfile $APP_HOME/Gemfile
COPY Gemfile.lock $APP_HOME/Gemfile.lock

RUN bundle install --jobs=4

ADD . $APP_HOME

RUN bundle exec bootsnap precompile --gemfile app/ lib/

RUN SECRET_KEY_BASE_DUMMY=1 ./bin/rails assets:precompile

CMD ["rails", "server", "-b", "0.0.0.0"]
