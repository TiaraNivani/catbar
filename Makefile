.PHONY: all install-deps build

all: build

help:
	@echo "Available targets:"
	@echo "    install-deps - Install dependencies"
	@echo "    build - Compile the plasmoid"
	@echo "    install - Install the plasmoid"

install-deps:
	@echo "Installing dependencies"
	@if command -v zypper &> /dev/null; then \
		  sudo zypper in plasma6-sdk libplasma6-devel extra-cmake-modules -y; \
	else \
			@echo "Error: zypper not package manager."
			@echo "Please install 'plasma6-sdk'."

rebuild:
	@echo "Rebuilding entire package"
	rm -rf build/
	mkdir build && cd build && cmake ..
