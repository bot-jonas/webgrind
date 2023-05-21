CXX = g++
SRCS = library/preprocessor.cpp
OUT = bin/preprocessor
NUM_BITS_FORMAT = 32


all: $(OUT)

help:
	@echo "Targets:"
	@echo "  all     - build preprocessor"
	@echo "  clean   - clear generated binaries"
	@echo "  help    - show this message\n"

clean:
	rm -f $(OUT)

$(OUT): $(SRCS)
	$(CXX) -o $(OUT) -O2 -s $(SRCS) -lz -DWITH_ZLIB -D NUM_BITS_FORMAT=$(NUM_BITS_FORMAT)

.PHONY: all help clean
