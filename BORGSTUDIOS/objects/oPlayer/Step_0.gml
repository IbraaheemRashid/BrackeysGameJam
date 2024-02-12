/// @description Insert description here
// You can write your code in this editor
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

// check if movement will be left or right 
var moveH = _right - _left;
var moveV = _down - _up;

// set speed based on left or right
hsp = moveH * walksp;
vsp = moveV * walksp;

//move_and_collide(_xinput * my_speed, _yinput * my_speed, wall_tiles)

if (tile_meeting(x+hsp, y, "Walls")){
	while(!tile_meeting(x+sign(hsp), y, "Walls")){
		x = x + sign(hsp);
	}
	hsp = 0
}

x = x + hsp;

// collision vertical
if (tile_meeting(x, y +vsp, "Walls")){
	while(!tile_meeting(x, y+sign(vsp), "Walls")){
		y = y + sign(vsp);
	}
	vsp = 0
}

y = y + vsp;

if (place_meeting(x,y,oWarp)){
	room_goto_next()
}
	