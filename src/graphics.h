#pragma once
#include <map>
#include <string>
#include <SDL.h>

struct SDL_Window{};
struct SDL_Renderer{};

class Graphics {
	/*

	 In every object that is visible on the GUI, there will always be a update and
	 a draw method.

	 1) draw is going to blit the surface (take the source image and copy it
	 to our destination through SDL_RenderCopy)

	 2) update is going to update the frames of the animation since there could
	 be many frames to an animation like walking

	 3) once that is done, then we will SDL_RenderPresent which will update the
	 entire frame

	 main loop :

	 update which frame -> render copy (copy pixels) -> render present (update frame)
	 */

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
