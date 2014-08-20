# docker-travis-ci-cli

Docker container for [travis ci client](http://blog.travis-ci.com/2013-01-14-new-client/) following 
[installation instructions](https://github.com/travis-ci/travis.rb#installation), using Ruby 1.9.3.

```
docker pull andredumas/travis-ci-cli
```

## Usage

```
docker run --rm andredumas/travis-ci-cli [command]
```

```
$ docker run --rm andredumas/travis-ci-cli -v
1.7.1
```
