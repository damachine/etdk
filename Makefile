# ETDK - Encrypt and Delete Key
# Makes installation easier with classic Unix-style commands

.PHONY: all build release debug install uninstall clean help

# Default target: build in release mode
all: release

# Build in release mode (optimized, no debug symbols)
release:
	@echo "Building ETDK (Release)..."
	cmake -B build -DCMAKE_BUILD_TYPE=Release
	cmake --build build -j4

# Build in debug mode (with debug symbols)
debug:
	@echo "Building ETDK (Debug)..."
	cmake -B build -DCMAKE_BUILD_TYPE=Debug
	cmake --build build -j4

# Alias for release build
build: release

# Install to system (/usr/bin)
install: release
	@echo "Installing ETDK..."
	sudo cmake --install build

# Uninstall from system
uninstall:
	@echo "Uninstalling ETDK..."
	sudo rm -f /usr/bin/etdk

# Clean build artifacts
clean:
	@echo "Cleaning build directory..."
	rm -rf build build-release

# Show available targets
help:
	@echo "ETDK - Makefile targets:"
	@echo ""
	@echo "  make              - Build in release mode (default)"
	@echo "  make release      - Build optimized release version"
	@echo "  make debug        - Build with debug symbols"
	@echo "  make install      - Build and install to /usr/bin (requires sudo)"
	@echo "  make uninstall    - Remove from /usr/bin (requires sudo)"
	@echo "  make clean        - Remove build artifacts"
	@echo "  make help         - Show this help message"
	@echo ""
	@echo "Dependencies: build-essential libssl-dev cmake"
