FROM alpine/socat
ARG VERSION
ENV VERSION ${VERSION:-v1}
ENTRYPOINT [ \
	"socat", \
	"TCP4-LISTEN:8080,reuseaddr,fork", \
	"SYSTEM:'echo HTTP/1.1 200; echo Content-Type: text/plain; echo; echo $VERSION'" \
]

