ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache curl

RUN curl -sL -o monitoror $(curl -s https://api.github.com/repos/monitoror/monitoror/releases/latest | grep 'browser_download_url.*monitoror-linux-arm' | cut -d: -f2,3 | tr -d \")

RUN chmod +x monitoror

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]