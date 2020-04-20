FROM alpine

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git curl bash

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]