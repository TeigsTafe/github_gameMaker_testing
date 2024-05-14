//draw button event

draw_self()

draw_set_halign(fa_center)
draw_set_valingn(fa_middle)
draw_set_font(fa_button)

draw_text(x,y,button_text)

if(global.button_selected = self)
{
		var icon_width = sprite_get_width(sp_ui_pointer)
		var wave_x = x - spirite_width / 2 - icon_width + wave(4)
		draw_sprite(sp_ui_pointer, 0, wave, x, y)
}





