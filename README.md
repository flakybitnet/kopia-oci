# kopia-oci

Container images of Kopia, a cross-platform backup tool.

This is a superset of [official images](https://github.com/kopia/kopia/tree/master/tools/docker).

## Goals

1. Provide rootless images.
2. Bundle OpenSSH client.
3. Distribute via multiple registries ([Issue 2834: Push images to a different registry](https://github.com/kopia/kopia/issues/2834)).

## Images

Images are built on top of the official ones and published in [GHCR](https://github.com/flakybitnet/kopia-oci/pkgs/container/kopia-server) and [GitLab](https://gitlab.flakybit.net/fb/kopia-oci/container_registry).

There are two profiles:
* `std` — standard Kopia server;
* `ssh` — Kopia with SSH client.

So, Kopia version should be like `<kopia-version>-<fb-revision>-<profile>`. For example, `0.18.2-fb1-std` or `0.18.2-fb1-ssh`.

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

Source code are available at [GitLab](https://gitlab.flakybit.net/fb/kopia-oci) and mirrored to [GitHub](https://github.com/flakybitnet/kopia-oci).
