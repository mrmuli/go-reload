 # create image from the official Go image
FROM golang

# Create binary directory, install glide and fresh
RUN mkdir -p $$GOPATH/bin && \
    curl https://glide.sh/get | sh && \
    go get github.com/pilu/fresh

# define work directory 
WORKDIR /go/src/github.com/andela-jmuli/go-reload

# expose port
EXPOSE 4000

# serve the app
CMD fresh
