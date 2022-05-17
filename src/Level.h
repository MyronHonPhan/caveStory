/*
 * Level.h
 *
 *  Created on: May 16, 2022
 *      Author: myronphan
 */

#ifndef SRC_LEVEL_H_
#define SRC_LEVEL_H_

#include <string>
#include "globals.h"

class Graphics;
struct SDL_Texture;

class Level {
public:
	Level();
	Level(std::string mapName, Vector2 spawnPoint, Graphics& graphics);
	~Level();

	void update(int elapsedTime);
	void draw(Graphics& graphics);

private:
	std::string _mapName;
	Vector2 _spawnPoint;
	Vector2 _size;
	SDL_Texture* _backgroundTexture;

	void loadMap(std::string mapName, Graphics& graphics);
};


#endif /* SRC_LEVEL_H_ */
