FROM alpine:3.11.2

LABEL "repository"="https://github.com/vitkhab/docker-hugo"
LABEL "homepage"="https://github.com/vitkhab/docker-hugo"
LABEL "maintainer"="Vitaly Khabarov <vitkhab@gmail.com>"

WORKDIR /src

ARG HUGO_VERSION="0.62.0"

RUN wget -O /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
  && tar xf /tmp/hugo.tar.gz hugo -C /bin/ \
  && rm /tmp/hugo.tar.gz

ENTRYPOINT ["/bin/hugo"]