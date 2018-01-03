FROM alpine

ADD mdns-repeater.c mdns-repeater.c
RUN apk add --no-cache build-base && \
    gcc -o /bin/mdns-repeater mdns-repeater.c -DHGVERSION="\"1\"" && \
    apk del build-base

ENV hostNIC=eth0 dockerNIC=docker_gwbridge
CMD mdns-repeater -f ${hostNIC} ${dockerNIC}
