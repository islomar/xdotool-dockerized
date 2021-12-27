FROM alpine:3.14
RUN apk add --no-cache xdotool=3.20160805.1-r2 libx11-dev=1.7.2-r0.apk
ENTRYPOINT ["xdotool"]