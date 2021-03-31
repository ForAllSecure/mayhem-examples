all:
	# intentionally left blank

static:
	go build -ldflags "-linkmode external -extldflags -static" -tags="netgo osusergo" -o testme_go -a main.go
