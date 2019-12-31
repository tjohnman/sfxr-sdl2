TARGET = sfxr-sdl2
CC=cc
LD=ld
CFLAGS = -std=c++11 -g -Wall -Wextra `sdl2-config --cflags`
LFLAGS = `sdl2-config --libs` -lSDL2_image
SRC = $(wildcard *.c)
OBJ = $(patsubst %.c,%.o,$(SRC))
DEP = $(patsubst %.c,%.d,%(SRC))

all: images
	pushd build && g++ ../src/*.cpp $(CFLAGS) $(LFLAGS) -o $(TARGET) && chmod +x $(TARGET) && popd
	cp -rf images build/