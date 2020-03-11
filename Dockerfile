FROM golang
RUN go get github.com/digitalocean/doctl/cmd/doctl
ADD https://storage.googleapis.com/kubernetes-release/release/v1.17.0/bin/linux/amd64/kubectl /bin/kubectl
RUN chmod +x /bin/kubectl
