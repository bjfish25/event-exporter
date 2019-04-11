#FROM golang:1.11-alpine3.9

#ENV SRC_PATH /go/src/github.com/rajholla/event-exporter
#ENV TARGET_PATH /home/rraghave/go/src/
#RUN apk add --no-cache make
#COPY $TARGET_PATH /go/src/
##ADD . $SRC_PATH/
#RUN echo $SRC_PATH && cd $SRC_PATH && make build


#FROM alpine:3.9
FROM debian
#COPY --from=0 /go/src/github.com/rajholla/event-exporter/sinks/bin/event-exporter /
COPY  bin/event-exporter /
CMD ["/event-exporter", "-v", "4"]
