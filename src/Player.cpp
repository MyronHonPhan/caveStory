/*
 * Player.cpp
 *
 *  Created on: May 13, 2022
 *      Author: myronphan
 */


#include "Player.h"
#include "graphics.h"

namespace player_constants {
	const float WALK_SPEED = 0.2f;
}


Player::Player() {}

Player::Player(Graphics& graphics, float x, float y)
	: AnimatedSprite(graphics, "res/sprites/MyChar.png",0,0,16, 16, x, y, 100) {

	graphics.loadImage("res/sprites/MyChar.png");

	this->setUpAnimations();
	this->playAnimation("Running Right");
}

void Player::moveRight() {
	this->_dx = player_constants::WALK_SPEED;
	this->playAnimation("Running Right");
	this->_facing = RIGHT;
}

void Player::moveLeft() {
	this->_dx = -player_constants::WALK_SPEED;
	this->playAnimation("Running Left");
	this->_facing = LEFT;
}

void Player::stopMoving() {
	this->_dx = 0;
	this->playAnimation(this->_facing == RIGHT ? "Idle Right" : "Idle Left");

}


void Player::animationDone(std::string currentAnimation) {

}

void Player::setUpAnimations() {
	// adds different animation vectors to use whenever we want

	this->addAnimation(1, 0, 0, "Idle Left", 16, 16, Vector2(0,0));
	this->addAnimation(1, 0, 16, "Idle Right", 16, 16, Vector2(0,0));
	this->addAnimation(3, 0, 0, "Running Left", 16, 16, Vector2(0,0));
	this->addAnimation(3, 0, 16, "Running Right", 16, 16, Vector2(0,0));
}

void Player::update(float elapsedTime) {
	this->_x = this->_x + this->_dx*elapsedTime;
	AnimatedSprite::update(elapsedTime);
}

void Player::draw(Graphics& graphics) {
	AnimatedSprite::draw(graphics, this->_x, this->_y);
}

