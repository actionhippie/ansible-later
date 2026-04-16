FROM alpine:3.23@sha256:5b10f432ef3da1b8d4c7eb6c487f2f5a8f096bc91145e68878dd4a5019afde11

# renovate: datasource=pypi depName=ansible-later
ENV ANSIBLE_LATER_VERSION=4.0.8

# renovate: datasource=pypi depName=ansible
ENV ANSIBLE_CORE_VERSION=13.5.0

RUN apk add --no-cache bash python3 python3-dev py3-pip && \
    pip3 install --break-system-packages -U ansible-later==${ANSIBLE_LATER_VERSION} ansible==${ANSIBLE_CORE_VERSION} && \
    rm -rf /root/.cache

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
