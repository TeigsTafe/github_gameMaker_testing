/// @description Insert description here
// You can write your code in this editor

if (active)
{
	//turn around if we hit a wall
	if (place_meeting(x+x_direction, y, ob_block))
	{
		x_direction *= -1
	}
	
	if (grounded)
	{
		vertical_speed = 0
	}
	else
	{
		vertical_speed += grav
	}
	
	move_and_collide(x_direction * move_speed, 0, ob_block, 4, 0, 0, move_speed, 0)
	move_and_collide(0, vertical_speed, ob_block, 8, 0, 0, 0, vertical_speed)

}





