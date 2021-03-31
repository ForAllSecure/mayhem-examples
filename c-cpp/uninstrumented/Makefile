
all: check-env testme

testme: clean Dockerfile
	mkdir -p src
	cp ../Makefile src
	cp -R ../v1 src
	cp -R ../v2 src
	docker build --build-arg DOCKERID=${DOCKERID} -f Dockerfile -t $(DOCKERID)/testme . && \
	docker push $(DOCKERID)/testme

clean:
	rm -Rf src


check-env:
ifndef DOCKERID
	$(error DOCKERID is undefined; needed for docker push)
endif
