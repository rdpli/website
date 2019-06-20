########################################################
### BUILD WEBSITE
########################################################
FROM ruby:2.4 AS build_docs

ENV JEKYLL_ENV=production

WORKDIR /

# Firstly bundle install (faster build)
RUN mkdir -p /src/
COPY Gemfile /src/
COPY Gemfile.lock /src/

WORKDIR /src/

# Production dependencies
RUN bundle install --without development test --deployment --jobs=$(nproc)

# Copy application code
RUN mkdir -p /src/
COPY . /src/

RUN bundle exec jekyll build --verbose

########################################################
### SERVE THE WEBSITE
########################################################

FROM nginx:stable AS run_doc

COPY --from=build_docs /src/_site/ /usr/share/nginx/html/
