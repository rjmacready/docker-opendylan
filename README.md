# Docker repo for opendylan

[Docker repo](https://registry.hub.docker.com/u/rjmacready/opendylan/)

`docker pull rjmacready/opendylan`

You should be set up for building [opendylan](http://opendylan.org) from source, you just need to [checkout the source](https://github.com/dylan-lang/opendylan).

## Supported tags

...

## What is Dylan and opendylan?

...

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


### Bootstrap the compiler from https://github.com/dylan-lang/opendylan



### Create a `Dockerfile` in your project



### Start a Dylan instance in your app


### Compile your app inside the Docker container


## License

## User Feedback

### Issues

### Contributing



