FROM alpine:latest

RUN apk --no-cache add \ 
      bash \
      curl \
      jq \
      groff \
      aws-cli \
      s3cmd \
    && curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl