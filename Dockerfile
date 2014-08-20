# https://github.com/travis-ci/travis.rb#installation

FROM ubuntu:14.04
MAINTAINER André Dumas

RUN apt-get update
RUN apt-get -y install ruby1.9.3 build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/

RUN gem install travis --no-rdoc --no-ri

ENTRYPOINT ["/usr/local/bin/travis"]