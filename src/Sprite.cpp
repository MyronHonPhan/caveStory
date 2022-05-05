#include <SDL.h>
#include <SDL_image.h>
#include <string>
#include "graphics.h"
#include "Sprite.h"
#include <iostream>

Sprite::Sprite() {};

Sprite::Sprite(Graphics& graphics, const std::string& filePath, int sourceX, int sourceY, int width, int height,
	float posX, float posY) : _x(posX), _y(posY) {
	this->_sourceRect.x = sourceX;
	this->_sourceRect.y = sourceY;
	this->_sourceRect.w = width;
	this->_sourceRect.h = height;
	
	this->_spriteSheet = SDL_CreateTextureFromSurface(graphics.getRenderer(), graphics.loadImage(filePath));
	if (this->_spriteSheet == NULL) {
		std::cout << "Error: Unable to load image" << std::endl;
		std::cout << IMG_GetError() << std::endl;
	}
}

Sprite::~Sprite() {

}

void Sprite::draw(Graphics& graphics, int x, int y ) {
	SDL_Rect destinationRect = { x, y, this->_sourceRect.w,this->_sourceRect.h };
	graphics.blitSurface(this->_spriteSheet, &this->_sourceRect, &destinationRect);
}

void Sprite::update() {}