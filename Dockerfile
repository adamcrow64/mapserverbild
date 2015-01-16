FROM google/golang
RUN CGO_ENABLED=0 go get -a -ldflags '-s' github.com/adamcrow64/server/server
RUN cp /gopath/src/github.com/adamcrow64/server/Dockerfile /gopath
RUN cp -rp /gopath/bin/server /gopath
CMD docker build -t adamcrow64/server gopath
