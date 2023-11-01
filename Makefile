SHELL = /bin/bash
TARGET = sfxr-sdl2
DEBUGFLAGS = -g -Wall -Wextra
CFLAGS = -std=c++11 `sdl2-config --cflags`
LFLAGS = `sdl2-config --libs`

all: images
	mkdir -p build && pushd build && g++ ../src/*.cpp $(CFLAGS) $(LFLAGS) -o $(TARGET) && chmod +x $(TARGET) && popd

debug: images
	mkdir -p build && pushd build && g++ ../src/*.cpp $(DEBUGFLAGS) $(CFLAGS) $(LFLAGS) -o $(TARGET) && chmod +x $(TARGET) && popd

images:
	mkdir -p build/images
	cp -rf images/* build/images/

install:
	mkdir -p /usr/local/share/sfxr/images/
	cp -f build/images/*.tga /usr/local/share/sfxr/images/
	chmod +x build/sfxr-sdl2
	cp build/sfxr-sdl2 /usr/bin/

uninstall:
	rm -rf /usr/local/share/sfxr
	rm /usr/bin/sfxr-sdl2

.PHONY: images
clean:
	rm -rf build
