/// @description Insert description here
// You can write your code in this editor



sprite_index = sp_player_idle

//if we are moving
if (horizontal_speed != 0)
{
	sprite_index = sp_player_walk
	image_xscale = sign(horizontal_speed)
}

if (not grounded)
{
	sprite_index = sp_player_jump
}



