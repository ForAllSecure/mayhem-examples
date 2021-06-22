default: all

DOCKER_REGISTRY ?=

FUZZME_ORG = fuzzme
BUILD_PREFIX := build/
PUSH_PREFIX := push/
CLEAN_PREFIX := clean/
FUZZERS := \
	ada/base-executable/ada-base-executable \
	c/afl/c-afl-clang \
	c/afl/c-afl-gcc \
	c/aflpp/c-aflpp-clang \
	c/aflpp/c-aflpp-gcc \
	c/honggfuzz/c-honggfuzz-clang \
	c/honggfuzz/c-honggfuzz-gcc \
	c/libfuzzer/c-libfuzzer \
	c/base-executable/c-base-executable \
	c/base-executable/powerpc-c-base-executable \
	c/base-executable/powerpc64-c-base-executable \
	c/base-executable/powerpc64le-c-base-executable \
	cpp/afl/cpp-afl-clang \
	cpp/afl/cpp-afl-gcc \
	cpp/aflpp/cpp-aflpp-clang \
	cpp/aflpp/cpp-aflpp-gcc \
	cpp/honggfuzz/cpp-honggfuzz-clang \
	cpp/honggfuzz/cpp-honggfuzz-gcc \
	cpp/libfuzzer/cpp-libfuzzer \
	cpp/base-executable/cpp-base-executable \
	kotlin/libfuzzer/kotlin-jazzer \
	go/libfuzzer/go-go-fuzz \
	go/base-executable/go-base-executable \
	java/libfuzzer/java-jazzer \
	java/base-executable/java-base-executable \
	ocaml/base-executable/ocaml-base-executable \
	ocaml/afl/ocaml-afl \
	python/libfuzzer/python-atheris \
	rust/afl/rust-afl \
	rust/libfuzzer/rust-cargo-fuzz \
	rust/base-executable/rust-base-executable
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
	$(eval SPLIT_IMAGE_FUZZER_3 = $(word 3, $(SPLIT_IMAGE_FUZZER)))
	docker build -t $(DOCKER_REGISTRY)/$(FUZZME_ORG)/$(SPLIT_IMAGE_FUZZER_3) $(IMAGE_FUZZER)

.PHONY: push
push: $(PUSH_FUZZERS)

$(PUSH_FUZZERS):
	$(eval IMAGE_FUZZER := $(@:$(PUSH_PREFIX)%=%))
	$(eval SPLIT_IMAGE_FUZZER = $(subst /, ,$(IMAGE_FUZZER)))
	$(eval SPLIT_IMAGE_FUZZER_3 = $(word 3, $(SPLIT_IMAGE_FUZZER)))
	docker push $(DOCKER_REGISTRY)/$(FUZZME_ORG)/$(SPLIT_IMAGE_FUZZER_3)

clean: $(CLEAN_FUZZERS)

$(CLEAN_FUZZERS):
	$(eval IMAGE_FUZZER := $(@:$(CLEAN_PREFIX)%=%))
	$(eval SPLIT_IMAGE_FUZZER = $(subst /, ,$(IMAGE_FUZZER)))
	$(eval SPLIT_IMAGE_FUZZER_3 = $(word 3, $(SPLIT_IMAGE_FUZZER)))
	docker rmi $(DOCKER_REGISTRY)/$(FUZZME_ORG)/$(SPLIT_IMAGE_FUZZER_3)
