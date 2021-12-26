FROM alpine:3.14
RUN apk add --no-cache xdotool libx11-dev
ENTRYPOINT ["xdotool"]