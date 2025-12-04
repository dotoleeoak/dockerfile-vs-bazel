# Comparison of Dockerfile and Bazel with `rules_oci`

## How to build with Dockerfile

Prerequisites: Docker

```sh
docker build -t hello_world:docker .
docker run --rm hello_world:docker
```

## How to build with Bazel

Prerequisites: Bazel, Docker

> Building the image does not require Docker, but loading and running it does.

```sh
bazel run //srcs:load_image
docker run --rm hello_world:bazel
```
