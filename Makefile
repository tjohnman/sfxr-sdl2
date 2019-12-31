TARGET = sfxr-sdl2
DEBUGFLAGS = -g -Wall -Wextra
CFLAGS = -std=c++11 `sdl2-config --cflags`
LFLAGS = `sdl2-config --libs` -lSDL2_image

all: images
	mkdir -p build && pushd build && g++ ../src/*.cpp $(CFLAGS) $(LFLAGS) -o $(TARGET) && chmod +x $(TARGET) && popd

debug: images
	mkdir -p build && pushd build && g++ ../src/*.cpp $(DEBUGFLAGS) $(CFLAGS) $(LFLAGS) -o $(TARGET) && chmod +x $(TARGET) && popd

images:
	cp -rf images build/

.PHONY: images
clean:
	rm -rf build