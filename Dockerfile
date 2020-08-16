FROM ruby:2.7.1-alpine
ENV BUNDLER_VERSION=2.1.4

# Set default locale for the environment
ENV JEKYLL_ENV production
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

LABEL "com.github.actions.name"="Build & Deploy to GitHub Pages"
LABEL "com.github.actions.description"="Builds & deploys Jekyll to gh-pages branch of the same repository. "
LABEL "com.github.actions.icon"="globe"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/tarebyte/jekyll-deploy-gh-pages/tree/master/build"

ADD entrypoint.sh /entrypoint.sh

RUN apk add --update --no-cache \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      less \
      libstdc++ \
      libffi-dev \
      libc-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      make \
      netcat-openbsd \
      nodejs \
      openssl \
      pkgconfig \
      postgresql-dev \
      python \
      tzdata \
      yarn

ENTRYPOINT ["/entrypoint.sh"]
