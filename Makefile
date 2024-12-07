# Общие настройки
GCC=gcc
CFLAGS=-Wall -Wextra -O2
TARGET=father
SRC=father.c
BUILD_DIR=build

# Цели
all: linux windows web

# Linux
linux:
	@echo "Installing the necessary dependencies for Linux..."
	sudo apt-get update && sudo apt-get install -y build-essential
	@echo "End of installation..."
	@echo "Compilation for Linux..."
	mkdir -p $(BUILD_DIR)/linux
	$(GCC) $(CFLAGS) -o $(BUILD_DIR)/linux/$(TARGET) $(SRC)
	@echo "Compilation completed. Binary is in $(BUILD_DIR)/linux/"

# Windows
windows:
	@echo "Compilation for Windows..."
	mkdir -p $(BUILD_DIR)/windows
	$(GCC) $(SRC) -o $(BUILD_DIR)/windows/$(TARGET).exe
	@echo "Compilation completed. Binary is in $(BUILD_DIR)/windows/"

# Web
web:
	@echo "Installing the necessary dependencies for WebAssembly..."
	sudo apt-get update
	sudo apt-get install -y git build-essential emscripten nodejs npm
	sudo npm install -g http-server
	@echo "Dependencies installed."
	@echo "Setting up Emscripten SDK..."
	cd .. && git clone https://github.com/emscripten-core/emsdk.git || true
	cd ../emsdk && ./emsdk install latest && ./emsdk activate latest && . ./emsdk_env.sh
	@echo "Emscripten SDK setup complete."
	@echo "Compiling for WebAssembly..."
	mkdir -p $(BUILD_DIR)/web
	emcc $(SRC) -s NO_EXIT_RUNTIME=0 -o $(BUILD_DIR)/web/$(TARGET).html
	@echo "WebAssembly compilation completed. Files are in $(BUILD_DIR)/web/"
	@echo "Starting a local server..."
	cd $(BUILD_DIR)/web && http-server
	@echo "Server stopped."