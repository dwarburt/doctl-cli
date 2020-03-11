FROM golang
RUN go get github.com/digitalocean/doctl/cmd/doctl
RUN apt-get update && apt-get install -y gettext
ADD https://storage.googleapis.com/kubernetes-release/release/v1.17.0/bin/linux/amd64/kubectl /bin/kubectl
RUN chmod +x /bin/kubectl
