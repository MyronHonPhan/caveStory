/*
 * AnimatedSprite.h
 *
 *  Created on: May 5, 2022
 *      Author: myronphan
 */

#ifndef SRC_ANIMATEDSPRITE_H_
#define SRC_ANIMATEDSPRITE_H_
#include <SDL2/SDL.h>
#include <map>
#include <string>
#include <vector>
#include "Sprite.h"
#include "globals.h"

class Graphics;


class AnimatedSprite : public Sprite {
public:
	AnimatedSprite();

	AnimatedSprite(Graphics& graphics, const std::string& filePath, int sourceX, int sourceY, int width, int height,
			float posX, float posY, float timeToUpdate);

	void playAnimation(std::string animation, bool once = false);

	void update(int elapsedTime);

	void draw(Graphics& graphics, int x, int y);

	virtual void setUpAnimations();

protected:
	double _timeToUpdate;
	bool _currentAnimationOnce;
	std::string _currentAnimation;

	// add animation to the map of animations
	void addAnimation(int frames, int x, int y, std::string name, int width, int height, Vector2 offset);

	// reset all animations associated with this sprite
	void resetAnimations();

	// stop current animation
	void stopAnimation();

	// toggle visibility of sprite
	void setVisible(bool visible);

	virtual void animationDone(std::string currentAnimation);
private:
	std::map<std::string, std::vector<SDL_Rect> > _animations;
	std::map<std::string, Vector2> _offsets;

	int _frameIndex;
	double _timeElapsed;
	bool _visible;
};


#endif /* SRC_ANIMATEDSPRITE_H_ */
