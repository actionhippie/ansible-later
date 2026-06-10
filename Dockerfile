FROM alpine:3.24@sha256:a2d49ea686c2adfe3c992e47dc3b5e7fa6e6b5055609400dc2acaeb241c829f4

# renovate: datasource=pypi depName=ansible-later
ENV ANSIBLE_LATER_VERSION=4.0.8

# renovate: datasource=pypi depName=ansible
ENV ANSIBLE_CORE_VERSION=14.0.0

RUN apk add --no-cache bash python3 python3-dev py3-pip && \
    pip3 install --break-system-packages -U ansible-later==${ANSIBLE_LATER_VERSION} ansible==${ANSIBLE_CORE_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
