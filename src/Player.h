/*
 * Player.h
 *
 *  Created on: May 13, 2022
 *      Author: myronphan
 */

#ifndef SRC_PLAYER_H_
#define SRC_PLAYER_H_

#include "AnimatedSprite.h"
#include "globals.h"

class Graphics;


class Player : public AnimatedSprite {
public:
	Player();
	Player(Graphics& graphics, float x, float y);
	void draw(Graphics& graphics);
	void update(float elapsedTime);

	void moveRight();
	void moveLeft();
	void stopMoving();

	virtual void animationDone(std::string currentAnimation);
	virtual void setUpAnimations();
private:
	float _dx, _dy;

	Direction _facing;
};


#endif /* SRC_PLAYER_H_ */
