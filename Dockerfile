# https://github.com/travis-ci/travis.rb#installation

FROM alpine:edge

MAINTAINER André Dumas
MAINTAINER Antón R. Yuste

RUN apk --update add \
  ca-certificates \
  ruby \
  ruby-bundler \
  ruby-dev && \
  rm -fr /usr/share/ri

RUN apk add --no-cache make gcc libc-dev git && \
  rm -fr /usr/share/ri

# Ugly workarround because of https://github.com/ffi/ffi/issues/485
# apk add --no-cache ruby-rake ruby-rdoc ruby-irb && \
#  rm -fr /usr/share/ri
# git clone git://github.com/ffi/ffi.git
# cd ffi
#
# gem install rubygems-tasks rake-compiler rspec

RUN gem install travis --no-rdoc --no-ri

# Location where travis config stored
ENV TRAVIS_CONFIG_PATH /travis
VOLUME /travis

# Generally the current working dir will be used as the repo volume
VOLUME /repo
WORKDIR /repo

# ENTRYPOINT ["/usr/local/bin/travis"]