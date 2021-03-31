
all: check-env lighttpd-old lighttpd-new

lighttpd-old: Dockerfile-lighttpd-1.4.15
	docker build --build-arg DOCKERID=${DOCKERID} -f Dockerfile-lighttpd-1.4.15 -t $(DOCKERID)/lighttpd:1.4.15 . && \
	docker push $(DOCKERID)/lighttpd:1.4.15

lighttpd-new: Dockerfile-lighttpd-1.4.52
	docker build --build-arg DOCKERID=${DOCKERID} -f Dockerfile-lighttpd-1.4.52 -t $(DOCKERID)/lighttpd:1.4.52 . && \
	docker push $(DOCKERID)/lighttpd:1.4.52

clean:


check-env:
ifndef DOCKERID
	$(error DOCKERID is undefined; needed for docker push)
endif
