// MEANDERS Auto splitter for Livesplit created by Chill
// Any issues please message me on Discord (Chill#9843)


// MEANDERS current process
state ("ISLE-Win64-Shipping")
	{
	// Changes every time the play button or reset button is pressed.
    int playButton: "ISLE-Win64-Shipping.exe" , 0x0323D2B0, 0x20, 0x308, 0x0, 0x68, 0x94;
	// Changes every time the player goes through a exit gate or resets the game.
	int levelCount: "ISLE-Win64-Shipping.exe" , 0x030376D0, 0x770, 0x30, 0x240, 0x160, 0x2C;
	}
// Starts the livesplit timer
start
	{
    return current.playButton == 6 && old.playButton == 264;
	} 
// Resets the livesplit timer
reset
	{
	return current.playButton == 264 && old.playButton == 6;
	} 	
// Splits using the splits file 
split
	{
    if (current.levelCount != old.levelCount && current.levelCount != 0) return true;
	}