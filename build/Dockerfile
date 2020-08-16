FROM ruby:2.7.1-alpine
ENV BUNDLER_VERSION=2.1.4

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV JEKYLL_ENV=production

LABEL "com.github.actions.name"="Builds to GitHub Pages"
LABEL "com.github.actions.description"="Builds the project to GitHub Pages"
LABEL "com.github.actions.icon"="globe"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/tarebyte/jekyll-deploy-gh-pages"

ADD entrypoint.sh /entrypoint.sh

RUN apk add --update --no-cache \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      libstdc++ \
      libffi-dev \
      libc-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      make \
      netcat-openbsd \
      npm \
      openssl \
      pkgconfig \
      tzdata

ENTRYPOINT ["/entrypoint.sh"]
