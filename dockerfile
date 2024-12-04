FROM debian:bookworm

RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    debhelper-compat dh-dkms debhelper linux-headers-generic \
    device-tree-compiler \
    dpkg-dev \
    sudo \
    && rm -rf /var/lib/apt/lists/*