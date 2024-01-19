#pragma once

#include "olcPixelGameEngine.h"


class game : public olc::PixelGameEngine
{
public:
	game()
	{
		sAppName = "Turn Base";
	}
	bool OnUserCreate()override;
	bool OnUserUpdate(float fElapsedTime) override;

};
