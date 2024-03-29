# kopia-docker

Docker image of Kopia, a cross-platform backup tool.

This is a superset of [official images](https://github.com/kopia/kopia/tree/master/tools/docker).

## Goals

1. Provide rootless images.
2. Distribute via multiple registries ([Issue 2834: Push images to a different registry](https://github.com/kopia/kopia/issues/2834)).

## Images

Images are built on top of the official ones and published in registries:
- [Quay](https://quay.io/repository/flakybitnet/kopia-server) `quay.io/flakybitnet/kopia-server`, 
- [GHCR](https://github.com/flakybitnet/kopia-docker/pkgs/container/kopia-server) `ghcr.io/flakybitnet/kopia-server`,
- [AWS](https://gallery.ecr.aws/flakybitnet/kopia/server) `public.ecr.aws/flakybitnet/kopia/server`,
- Harbor `harbor.flakybit.net/kopia/server`.

## Usage

Usage is not different from [the official images](https://kopia.io/docs/installation/#docker-images). So, you can run the server by the command:

```
docker run -e KOPIA_PASSWORD \
    -v /path/to/config/dir:/app/config \
    -v /path/to/cache/dir:/app/cache \
    -v /path/to/logs/dir:/app/logs \
    -v /path/to/repository/dir:/repository \
    -v /path/to/tmp/dir:/tmp:shared \
    <image>:<version>
```

## Source

Source code are available at [Gitea](https://gitea.flakybit.net/flakybit/kopia-docker) and mirrored to [GitHub](https://github.com/flakybitnet/kopia-docker).