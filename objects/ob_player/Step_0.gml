/// @description Insert description here
// You can write your code in this editor

var input_horizontal = 0
var input_jump = keyboard_check(vk_space)

						//0 or 1			-		//0 or 1
input_horizontal = keyboard_check(vk_right) - keyboard_check(vk_left)

if (grounded)
{
	if (vertical_speed > 0)
	{
		vertical_speed = 0
	}
	
	if (input_jump)
	{
		vertical_speed = -jump_power
	}
}
else
{
	vertical_speed += grav
}

horizontal_speed = walk_speed * input_horizontal

#region Enemy Collision
//check where we're about to end up, and save any enemy instance there
var enemy = instance_place(x + horizontal_speed, y + vertical_speed, ob_enemy_simple)

if (enemy)
{
	if (enemy.bbox_top > bbox_bottom)
	{
		vertical_speed = -jump_power/2
		if (input_jump)
		{
			vertical_speed = -jump_power
		}
		instance_destroy(enemy)
	}
	else
	{
		room_restart()
	}
}
#endregion

move_and_collide(horizontal_speed, 0, ob_block, 8, 0, 0, horizontal_speed, 0)
move_and_collide(0, vertical_speed, ob_block, 16, 0, 0, 0, vertical_speed)

if (y > room_height + 100 or place_meeting(x, y, ob_hurtbox))
{
	room_restart()
}