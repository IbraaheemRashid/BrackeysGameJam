/// @description Insert description here
// You can write your code in this editor
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

//player movement -> (open region)
#region
// check if movement will be left or right 
var moveH = _right - _left;
var moveV = _down - _up;
moveDir = point_direction( 0, 0, moveH, moveV );

// set speed based on left or right
var spd = 0;
var inputLevel = point_distance( 0, 0, moveH, moveV);
inputLevel = clamp( inputLevel, 0 , 1);
spd = walksp * inputLevel;

hsp = lengthdir_x(spd, moveDir);
vsp = lengthdir_y(spd, moveDir);

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
#endregion



//player aiming
		centerY = y + centerYOFFSet;
		
		//aim
		aimDir = point_direction( x, centerY, mouse_x, mouse_y);

//sprite control
#region
	// make sure the player is facing the correct direction
	face = round( aimDir/90 );
	if face == 4 { face = 0; };
	
	//animate
	/*if hsp == 0 && vspd == 0
	{
		image_index = 0;			//when we are not moving the sprites legs do not need to move
	}
*/
	//set the player sprite
	mask_index = sprite[3];			//makes sure the sprite keeps the same collision box
	sprite_index = sprite[face];
	#endregion



