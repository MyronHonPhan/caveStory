#include "Input.h"

void Input::beginNewFrame() {
	// clears all the maps for the next frame
    this->_pressedKeys.clear();
    this->_releasedKeys.clear();
}

void Input::keyDownEvent(const SDL_Event& event) {
	// when we press a key down, then we will map pressed keys and
	// held keys to true
    this->_pressedKeys[event.key.keysym.scancode] = true;
    this->_heldKeys[event.key.keysym.scancode] = true;
}

void Input::keyUpEvent(const SDL_Event& event) {
	// when we release a key, then we turn released key to true,
	// and held keys to false
    this->_releasedKeys[event.key.keysym.scancode] = true;
    this->_heldKeys[event.key.keysym.scancode] = false;
}

bool Input::wasKeyPressed(SDL_Scancode key) {
	// returns a boolean to see if a certain key was pressed
    return this->_pressedKeys[key];
}
bool Input::wasKeyReleased(SDL_Scancode key) {
	// returns a boolean to see if a certain key was released
    return this->_releasedKeys[key];
}
bool Input::isKeyHeld(SDL_Scancode key){
	// returns a boolean to see if a certain key was held
    return this->_heldKeys[key];
}
