#include <fstream>
#include "fuzz_methods.cpp"

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Usage: fuzz_target <input_file>\n";
        return 1;
    }

    std::ifstream file(argv[1], std::ios::binary);
    if (!file) {
        std::cerr << "Error opening file: " << argv[1] << "\n";
        return 1;
    }

    std::string data((std::istreambuf_iterator<char>(file)),
        std::istreambuf_iterator<char>());

    fuzz_init();
    test_all(data);

    return 0;
}