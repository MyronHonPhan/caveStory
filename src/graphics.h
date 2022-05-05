#pragma once
#include <map>
#include <string>

struct SDL_Window{};
struct SDL_Renderer{};

class Graphics {
public:
    Graphics();
    ~Graphics();

    // loads an image into the spriteSheet map if it doesn't exist there already
    // SDL surface is a collection of pixels used for blitting
    SDL_Surface* loadImage(const std::string& filepath);

    // draws a texture to a certain part of the screen
    // "blitting" means to copy bits from one part of the GPU to another part (the screen)
    void blitSurface(SDL_Texture* source, SDL_Rect* sourceRectangle, SDL_Rect* destinationRectangle);

    // renders everything to the screen
    void flip();

    // clears the screen
    void clear();

    SDL_Renderer* getRenderer() const;
private:
    SDL_Window* _window;
    SDL_Renderer* _renderer;
    bool _isRunning = false;

    std::map<std::string, SDL_Surface*> _spriteSheets;
};