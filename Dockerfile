# https://github.com/travis-ci/travis.rb#installation

FROM ubuntu:14.04
MAINTAINER André Dumas

RUN apt-get update
RUN apt-get -y install ruby1.9.3 build-essential git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/

RUN gem install travis --no-rdoc --no-ri

# Location where travis config stored
ENV TRAVIS_CONFIG_PATH /travis
VOLUME /travis

# Generally the current working dir will be used as the repo volume
VOLUME /repo
WORKDIR /repo

ENTRYPOINT ["/usr/local/bin/travis"]