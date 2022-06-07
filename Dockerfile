FROM alpine:3.16

# renovate: datasource=pypi depName=ansible-later
ENV ANSIBLE_LATER_VERSION=2.0.14

# renovate: datasource=pypi depName=ansible
ENV ANSIBLE_CORE_VERSION=5.9.0

RUN apk add --no-cache bash python3 python3-dev py3-pip py3-cryptography && \
    pip3 install -U ansible-later==${ANSIBLE_LATER_VERSION} ansible==${ANSIBLE_CORE_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
