# Docker repo for opendylan

[Docker repo](https://registry.hub.docker.com/u/rjmacready/opendylan/)

`docker pull rjmacready/opendylan`

You should be set up for building [opendylan](http://opendylan.org) from source, you just need to [checkout the source](https://github.com/dylan-lang/opendylan).

## Supported tags

...

## What is Dylan and opendylan?

...

## What this repo has?

* `rjmacready/opendylan-2013.2`: An image for 2013.2 dylan compiler (last stable release)
* `rjmacready/opendylan-2013.2-onbuild`: An image for building projects using 2013.2 dylan compiler
* `rjmacready/opendylan-latest`: An image for building compiler from github
* `rjmacready/opendylan-latest-onbuild`: An image for building projects using dylan compiler from github

## How to use this image

### Building and running your application

*Don't forget to add `.git`, `_build` and other unnecessary contents to you .dockerignore*

You Dockerfile:

```
FROM rjmacready/opendylan-2013.2-onbuild

CMD ["./_build/bin/hello-world"]
```

and then you can build and run by:

```
docker build -t hello-world
docker run -it --rm --name running-hello-world hello-world
```

For web applications, you should expose your port:

```
FROM rjmacready/opendylan-2013.2-onbuild

ENV PORT 8080
EXPOSE 8080

CMD ["./_build/bin/heroku-http-server-demo"]
```


### Bootstrap the compiler from https://github.com/dylan-lang/opendylan



## License

## User Feedback

### Issues

### Contributing



