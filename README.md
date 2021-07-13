# sfxr-sdl2
DrPetter's sound effect generator ported to SDL2.

sfxr is a generator for simple sound effects, created by DrPetter (http://www.drpetter.se). You can use it to create easy retro sounds for remixing or video games.

Ported to SDL2 from: [grimfang4/sfxr](https://github.com/grimfang4/sfxr).

## Download
- You can find pre-packaged [releases](https://github.com/tjohnman/sfxr-sdl2/releases/latest) for macOS and Windows.

## Dependencies
- [SDL2](https://www.libsdl.org/download-2.0.php)

## Building
### macOS
- Make sure you have Xcode command line tools installed.
- Install SDL2 via `brew install sdl2` (get [Homebrew](https://brew.sh/) first), or your method of choice.
- Run `make` in the same directory as the Makefile.

### Linux
- Install SDL2 using your package manager of choice.
- Run `make` in the same directory as the Makefile.

### Windows
- Install [MinGW](https://sourceforge.net/projects/mingw-w64/files/latest/download) and [SDL2](https://www.libsdl.org/download-2.0.php).
- Extract SDL2 to the sfxr-sdl2-master directory or wherever you wish.
- Using MinGW's command line, `cd` into the sfxr-sdl2-master and run `g++ src/*.cpp -ISDL2-2.0.14/x86_64-w64-mingw32/include -LSDL2-2.0.14/x86_64-w64-mingw32/lib -lmingw32 -lSDL2main -lSDL2 -mwindows -o sfxr-sdl2.exe`. **Make sure to adjust your "include" and "lib" directories to your actual SDL2 location if needed**.
