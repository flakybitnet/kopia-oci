ARG KOPIA_VERSION
FROM kopia/kopia:${KOPIA_VERSION}

ENV UID=1001 \
    GID=1001

RUN apt-get update && \
    apt-get upgrade -y --with-new-pkgs && \
    apt-get install -y --no-install-recommends openssh-client && \
    apt-get clean autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/* /var/lib/cache/* /var/lib/log/* \
    /var/tmp/* /usr/share/doc/ /usr/share/man/ /usr/share/locale/ \
    /root/.cache /root/.local /root/.gnupg /root/.config /tmp/*

RUN set -ex; \
    groupadd --gid $GID kopia && \
    useradd --uid $UID --gid $GID --no-create-home --home-dir /app kopia && \
    chown $UID:$GID /app

EXPOSE 51515
USER $UID:$GID
