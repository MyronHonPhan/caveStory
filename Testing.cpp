#include <iostream>
#include <SDL.h>
#include "src/graphics.h"

int main() {
    std::cout << "Hello World!" << std::endl;
    Graphics graphics;

    bool quit = false;
    SDL_Event e;
    while (!quit) {
        while (SDL_PollEvent(&e)) {
            if (e.type == SDL_QUIT) {
                quit = true;
            }
        }
    }
    return 0;
}