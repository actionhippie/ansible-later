FROM alpine:3.24@sha256:5b02b42e375f7426f8d65c3af331ca05d9878f9989230354504e0b9dfd431f60

# renovate: datasource=pypi depName=ansible-later
ENV ANSIBLE_LATER_VERSION=4.0.8

# renovate: datasource=pypi depName=ansible
ENV ANSIBLE_CORE_VERSION=14.4.0

RUN apk add --no-cache bash python3 python3-dev py3-pip && \
    pip3 install --break-system-packages -U ansible-later==${ANSIBLE_LATER_VERSION} ansible==${ANSIBLE_CORE_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
