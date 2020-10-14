FROM ruby:2.7.2-alpine
RUN apk add --no-cache --update build-base linux-headers git

LABEL com.github.actions.name="Run Rubocop on you Code"
LABEL com.github.actions.description="Lint your Ruby code"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="red"

LABEL maintainer="Stéphane FEUGA OSHIMA <sfeuga@member.fsf.org>"

COPY lib /action/lib
ENTRYPOINT ["/action/lib/entrypoint.sh"]
