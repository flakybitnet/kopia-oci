ARG VERSION=latest
FROM kopia/kopia:${VERSION}

ENV UID=1001 \
    GID=1001

RUN set -ex; \
    groupadd --gid $GID kopia && \
    useradd --uid $UID --gid $GID --no-create-home --home-dir /app kopia && \
    chown $UID:$GID /app

EXPOSE 51515
USER $UID:$GID
