
if (active)
{
    global.bloqueado = true;
	global.pausado = true

    if (array_length(list_falas) > 0)
    {
        fala_atual = clamp(fala_atual, 0, array_length(list_falas) - 1);

		draw_set_halign(fa_left)
        gpu_set_texfilter(false);
		
		draw_set_alpha(1)

        draw_sprite_stretched(spr_background_ask, 0, 180, 450, 1000, 300);
        draw_sprite_ext(actor_1, 0, 0, room_height, 5, 5, 0, c_white, 1);

        draw_set_font(font_mine);

        draw_text(230, 510, string(list_falas[fala_atual]));
		draw_set_halign(fa_right)
        draw_text(room_width - 220, 700, "Clique para continuar");
    }
	
	draw_set_halign(fa_center)
}