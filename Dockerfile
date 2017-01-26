FROM debian
LABEL maintainer "Ashok Modi <ashok.modi@card.com>"

RUN apt-get update \
  && apt-get install -y --no-install-recommends logrotate python-pip groff-base \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/
RUN pip install awscli
