FROM alpine

ADD mdns-repeater.c mdns-repeater.c
RUN apk add --no-cache build-base && \
    gcc -O3 -o /bin/mdns-repeater mdns-repeater.c -DHGVERSION="\"1\"" && \
    apk del build-base

COPY run.sh /run.sh
ENV options="" hostNIC=eth0 dockerNIC=docker_gwbridge
CMD mdns-repeater -f ${options} ${hostNIC} ${dockerNIC}

ENTRYPOINT [ "/run.sh" ]
