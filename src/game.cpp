#include <SDL2/SDL.h>

#include <iostream>
#include "game.h"
#include "graphics.h"
#include "Input.h"

namespace {
    const int FPS = 50;
    const int MAX_FRAME_TIME = 5 * 1000 / FPS;
}

Game::Game() {
    // initialize the sdl library (events, audio, controllers, etc.)
    SDL_Init(SDL_INIT_EVERYTHING);
    this->gameLoop();
}

Game::~Game() {

}

void Game::gameLoop() {
    Graphics graphics;
    SDL_Event event;
    Input input;

    this->_player = AnimatedSprite(graphics, "res/sprites/MyChar.png", 0, 0, 16, 16, 100, 100,100);

    this->_player.setUpAnimations();
    this->_player.playAnimation("Running Right");

    int LAST_UPDATE_TIME = SDL_GetTicks();

    while (true) {
        input.beginNewFrame();
        if (SDL_PollEvent(&event)) {
            if (event.type == SDL_KEYDOWN) {
                if (event.key.repeat == 0) {
                    input.keyDownEvent(event);
                }
            }
            else if (event.type == SDL_KEYUP) {
                input.keyUpEvent(event);
            }

            else if (event.type == SDL_QUIT) {
                return;
            }
        }
        if (input.wasKeyPressed(SDL_SCANCODE_ESCAPE) == true) {
            return;
        }

        int CURRENT_UPDATE_TIME = SDL_GetTicks();
        int ELAPSED_TIME = CURRENT_UPDATE_TIME - LAST_UPDATE_TIME;
        this->update(std::min(ELAPSED_TIME, MAX_FRAME_TIME));
        LAST_UPDATE_TIME = CURRENT_UPDATE_TIME;

        this->draw(graphics);
    }
}

void Game::draw(Graphics &graphics) {
    // clear graphics, blit (copy data to rendering context), then render 
    graphics.clear();
    this->_player.draw(graphics, 100, 100);
    graphics.flip();
}

void Game::update(float elapsedTime) {
	this->_player.update(elapsedTime);
}
