#include <SDL.h>
#include <SDL_image.h>
#include "graphics.h"
#include "globals.h"
#include <iostream>

Graphics::Graphics() {
    /*
    Graphics Pipline:

    1) Load image
    2) Blitting (draw a surface on top of another surface, copy memory from a buffer (GPU or whatever)
    to the buffer that we use to draw images for the screen.
    3) Render Image (update screen)
    4) Clear graphical interface for the next loop
    
    Steps 2 through 4 repeat themselves in a loop
    */

    //SDL_CreateWindowAndRenderer(640, 480, 0, &_window, &_renderer);
    _window = SDL_CreateWindow("Test Window", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,globals::SCREEN_WIDTH , globals::SCREEN_HEIGHT, 0);
    _renderer = SDL_CreateRenderer(_window, -1, 0);

    SDL_SetWindowTitle(_window, "CaveStory");
}

Graphics::~Graphics() {
    SDL_DestroyWindow(_window);
}

SDL_Surface* Graphics::loadImage(const std::string& filepath) {
    if (this->_spriteSheets.count(filepath) == 0) {
        this->_spriteSheets[filepath] = IMG_Load(filepath.c_str());
    }
    return this->_spriteSheets[filepath];
}

void Graphics::blitSurface(SDL_Texture* source, SDL_Rect* sourceRectangle, SDL_Rect* destinationRectangle) {
    SDL_RenderCopy(this->_renderer, source, sourceRectangle, destinationRectangle);
}

void Graphics::flip() {
    SDL_RenderPresent(this->_renderer);
}

void Graphics::clear() {
    SDL_RenderClear(this->_renderer);
}

SDL_Renderer* Graphics::getRenderer() const {
    return this->_renderer;
}
