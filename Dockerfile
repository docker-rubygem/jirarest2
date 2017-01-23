FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.8

RUN gem install jirarest2 --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jira_comment"]
CMD ["--help"]
