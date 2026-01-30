FROM python:3.12-slim

ARG VERSION=0.1.1
ARG SHA256

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

ADD --unpack=true --checksum=sha256:${SHA256} \
    https://github.com/MrDave/StaticJinjaPlus/archive/refs/tags/${VERSION}.tar.gz /opt/

WORKDIR /opt/StaticJinjaPlus-${VERSION}
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python", "main.py", "--srcpath", "templates_example/"]