/// @desc Core Player Logic

// get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,OBJ_wall)) and (key_jump)
{
	vsp = -jumpsp
}



//horizontal colision
if (place_meeting(x+hsp,y,OBJ_wall))
{
	while (!place_meeting(x+sign(hsp),y,OBJ_wall))
	{
		x = x + sign(hsp);


	}
	hsp = 0;
	
}


x = x + hsp;

//vertical colision
if (place_meeting(x,y+vsp,OBJ_wall))
{
	while (!place_meeting(x,y+sign(vsp),OBJ_wall))
	{
		y = y + sign(vsp);


	}
	vsp = 0;
	
}


y = y + vsp;


//animation

if (!place_meeting(x,y+1, OBJ_wall))
{
	
	sprite_index = SPR_hatguy_jump
	image_speed = 0
	if (vsp > 0) image_index = 7; else image_index = 0;
	
	
	
	
	
	
}
else
{
	image_speed = 1
	if (hsp == 0)
	{
		sprite_index = SPR_hatguy_idle
	}
	else
	{
		sprite_index = SPR_hatguy_walk
	}
	
	
}



//flipping sprite

if (hsp != 0) image_xscale = sign(hsp);














