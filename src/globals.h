/*
 * globals.h
 *
 *  Created on: May 5, 2022
 *      Author: myronphan
 */

#ifndef SRC_GLOBALS_H_
#define SRC_GLOBALS_H_

namespace globals {
	const int SCREEN_WIDTH = 600;
	const int SCREEN_HEIGHT = 480;

	const float SPRITE_SCALE = 2.0f;

}

struct Vector2 {
		int x, y;
		Vector2()
			: x(0), y(0) {}
		Vector2(int x, int y)
			: x(x), y(y) {}
		Vector2 zero() {
			return Vector2();
		}
	};



#endif /* SRC_GLOBALS_H_ */
