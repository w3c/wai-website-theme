FROM ruby:3.3.3-bookworm

# System tools and Node.js 20 for CSS build pipeline.
RUN apt-get update && apt-get install -y --no-install-recommends \
      curl \
      git \
      build-essential \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y --no-install-recommends nodejs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install Ruby gems with Docker layer caching.
COPY Gemfile Gemfile.lock wai-website-theme.gemspec ./
RUN bundle install

# Install Node packages with Docker layer caching.
COPY package.json package-lock.json ./
RUN npm ci

# Keep entrypoint outside /app so bind mounts do not shadow it.
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 4000 35729

ENTRYPOINT ["sh", "/usr/local/bin/docker-entrypoint.sh"]
