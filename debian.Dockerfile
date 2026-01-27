FROM ubuntu:22.04

ARG VERSION=0.1.1

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

ADD --unpack=true https://github.com/MrDave/StaticJinjaPlus/archive/refs/tags/${VERSION}.tar.gz /opt/

WORKDIR /opt/StaticJinjaPlus-${VERSION}
RUN pip3 install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python3", "main.py", "--srcpath", "templates_example/"]