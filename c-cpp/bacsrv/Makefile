
all: check-env bacsrv

bacsrv: Dockerfile
	cp ../bacsrv .
	docker build --build-arg DOCKERID=${DOCKERID} -f Dockerfile -t $(DOCKERID)/bacsrv . && \
	docker push $(DOCKERID)/bacsrv

clean:


check-env:
ifndef DOCKERID
	$(error DOCKERID is undefined; needed for docker push)
endif
