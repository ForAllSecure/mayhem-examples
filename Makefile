default: all

DOCKER_REGISTRY ?=

FUZZME_ORG = fuzzme
BUILD_PREFIX := build/
PUSH_PREFIX := push/
CLEAN_PREFIX := clean/
FUZZERS := \
	ada/ada-uninstrumented \
	c/c-afl-clang \
	c/c-afl-gcc \
	c/c-aflpp-clang \
	c/c-aflpp-gcc \
	c/c-honggfuzz-clang \
	c/c-honggfuzz-gcc \
	c/c-libfuzzer \
	c/c-uninstrumented \
	cpp/cpp-afl-clang \
	cpp/cpp-afl-gcc \
	cpp/cpp-aflpp-clang \
	cpp/cpp-aflpp-gcc \
	cpp/cpp-honggfuzz-clang \
	cpp/cpp-honggfuzz-gcc \
	cpp/cpp-libfuzzer \
	cpp/cpp-uninstrumented \
	kotlin/kotlin-jazzer \
	go/go-go-fuzz \
	go/go-uninstrumented \
	java/java-jazzer \
	ocaml/ocaml-uninstrumented \
	python/python-atheris \
	rust/rust-afl \
	rust/rust-cargo-fuzz \
	rust/rust-uninstrumented
BUILD_FUZZERS := $(addprefix $(BUILD_PREFIX), $(FUZZERS))
PUSH_FUZZERS := $(addprefix $(PUSH_PREFIX), $(FUZZERS))
CLEAN_FUZZERS := $(addprefix $(CLEAN_PREFIX), $(FUZZERS))


all:
	@echo "make build or make push to make things happen"

.PHONY: build
build: $(BUILD_FUZZERS)

$(BUILD_FUZZERS):
	$(eval IMAGE_FUZZER := $(@:$(BUILD_PREFIX)%=%))
	$(eval SPLIT_IMAGE_FUZZER = $(subst /, ,$(IMAGE_FUZZER)))
	$(eval SPLIT_IMAGE_FUZZER_2 = $(word 2, $(SPLIT_IMAGE_FUZZER)))
	docker build -t $(DOCKER_REGISTRY)/$(FUZZME_ORG)/$(SPLIT_IMAGE_FUZZER_2) $(IMAGE_FUZZER)

.PHONY: push
push: $(PUSH_FUZZERS)

$(PUSH_FUZZERS):
	$(eval IMAGE_FUZZER := $(@:$(PUSH_PREFIX)%=%))
	$(eval SPLIT_IMAGE_FUZZER = $(subst /, ,$(IMAGE_FUZZER)))
	$(eval SPLIT_IMAGE_FUZZER_2 = $(word 2, $(SPLIT_IMAGE_FUZZER)))
	docker push $(DOCKER_REGISTRY)/$(FUZZME_ORG)/$(SPLIT_IMAGE_FUZZER_2)

clean: $(CLEAN_FUZZERS)

$(CLEAN_FUZZERS):
	$(eval IMAGE_FUZZER := $(@:$(CLEAN_PREFIX)%=%))
	$(eval SPLIT_IMAGE_FUZZER = $(subst /, ,$(IMAGE_FUZZER)))
	$(eval SPLIT_IMAGE_FUZZER_2 = $(word 2, $(SPLIT_IMAGE_FUZZER)))
	docker rmi $(DOCKER_REGISTRY)/$(FUZZME_ORG)/$(SPLIT_IMAGE_FUZZER_2)
