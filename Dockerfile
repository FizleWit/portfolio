FROM debian:bookworm-slim
ARG HUGO_VERSION=0.147.2

RUN apt-get update && apt-get install -y \
    git \
    bash \
    curl \
    nodejs \
    npm \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*



RUN curl -LO https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz \
    && tar -xzf hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz \
    && mv hugo /usr/local/bin/ \
    && rm hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz

WORKDIR /site

EXPOSE 1313

CMD ["hugo", "server", "--bind=0.0.0.0", "--watch", "-D", "-F"]