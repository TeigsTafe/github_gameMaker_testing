/// @description Insert description here
// You can write your code in this editor

var input = keyboard_check(vk_down) - keyboard_check_pressed(vk_up)

if (input != 0)
{
	button_index_current + add_and_wrap(button_index_current, input, 0, 1)
	
	global.button_selected = global.title_buttons[button_index_current]
}