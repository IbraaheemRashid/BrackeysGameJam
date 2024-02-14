/// @description Insert description here
// You can write your code in this editor
	hsp = 0;
	vsp = 0;
	walksp = 4;
	moveDir = 0;


//Sprite control:
//setting up an array to have the same variables apply to all directional sprites
	centerYOFFSet = -16;		//offset of where the weapon is form the spritew origin
	centerY = y + centerYOFFSet;	//set in step event
	aimDir = 0;


	face = 0;
	sprite[0] = sPlayerRight;
	sprite[1] = sPlayerUp;
	sprite[2] = sPlayerLeft;
	sprite[3] = sPlayerDown;



