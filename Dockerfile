FROM n8nio/n8n
USER root
RUN apk update
RUN apk add --update curl
RUN apk add --update python3 py3-pip
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /bin/yt-dlp && chmod a+rx /bin/yt-dlp
USER node
