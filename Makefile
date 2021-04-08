default: all

DOCKER_REGISTRY ?=

FUZZME_ORG = fuzzme
BUILD_PREFIX := build/
PUSH_PREFIX := push/
CLEAN_PREFIX := clean/
FUZZERS := \
	ada-uninstrumented \
	c-afl-gcc \
	c-uninstrumented \
	go-uninstrumented \
	java-jazzer \
	python-atheris \
	rust-uninstrumented
BUILD_FUZZERS := $(addprefix $(BUILD_PREFIX), $(FUZZERS))
PUSH_FUZZERS := $(addprefix $(PUSH_PREFIX), $(FUZZERS))
CLEAN_FUZZERS := $(addprefix $(CLEAN_PREFIX), $(FUZZERS))


all:
	@echo "make build or make push to make things happen"

.PHONY: build
build: $(BUILD_FUZZERS)

$(BUILD_FUZZERS):
	$(eval IMAGE_FUZZER := $(@:$(BUILD_PREFIX)%=%))
	docker build -t $(DOCKER_REGISTRY)/$(FUZZME_ORG)/$(IMAGE_FUZZER) $(IMAGE_FUZZER)

.PHONY: push
push: $(PUSH_FUZZERS)

$(PUSH_FUZZERS):
	$(eval IMAGE_FUZZER := $(@:$(PUSH_PREFIX)%=%))
	docker push $(DOCKER_REGISTRY)/$(FUZZME_ORG)/$(IMAGE_FUZZER)

clean: $(CLEAN_FUZZERS)

$(CLEAN_FUZZERS):
	$(eval IMAGE_FUZZER := $(@:$(CLEAN_PREFIX)%=%))
	docker rmi $(DOCKER_REGISTRY)/$(FUZZME_ORG)/$(IMAGE_FUZZER)
