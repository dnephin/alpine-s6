
FROM alpine:edge

RUN apk update && apk add s6
ADD s6 /s6
CMD ["s6-svscan", "/s6"]
