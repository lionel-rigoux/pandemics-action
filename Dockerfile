FROM docker:dind

RUN apk add bash

RUN mkdir -p /tmpdata

COPY entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
