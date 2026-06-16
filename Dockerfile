FROM alpine:3.24@sha256:f5064d3e5f88c467c714509f491853ab2d951932c5cad699c0cb969dcec6f3b4

# renovate: datasource=pypi depName=ansible-later
ENV ANSIBLE_LATER_VERSION=4.0.8

# renovate: datasource=pypi depName=ansible
ENV ANSIBLE_CORE_VERSION=14.0.0

RUN apk add --no-cache bash python3 python3-dev py3-pip && \
    pip3 install --break-system-packages -U ansible-later==${ANSIBLE_LATER_VERSION} ansible==${ANSIBLE_CORE_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
