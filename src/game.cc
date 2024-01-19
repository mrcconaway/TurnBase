#include "olcPixelGameEngine.h"
#include "game.h"

// initize game stuff
bool game::OnUserCreate()
{

    return true;
}

// update game stuff
bool game::OnUserUpdate(float fElapsedTime) 
{
	// called once per frame
	for (int x = 0; x < ScreenWidth(); x++)
		for (int y = 0; y < ScreenHeight(); y++)
			Draw(x, y, olc::Pixel(rand() % 256, rand() % 256, rand()% 256));	
	return true;
}

