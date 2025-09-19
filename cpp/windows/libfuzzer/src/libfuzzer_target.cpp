#include "fuzz_methods.cpp"

extern "C" int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    fuzz_init();

    if (Size > 0) {
        std::string data((const char*) Data, Size);
        test_all(data);
        return 0;
    }

    return 1;
}