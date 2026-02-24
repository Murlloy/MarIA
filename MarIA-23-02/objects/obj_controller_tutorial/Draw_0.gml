
if(desenhar_falas) {

	draw_set_color(c_black)
	draw_set_alpha(.3)
	draw_rectangle(0,0,room_width, room_height, 0)
	
	draw_set_color(c_black)
	draw_set_alpha(1)
	draw_rectangle(0, room_height,room_width, 500, 0)
	
	draw_sprite_ext(spr_maria, 0, 130, 640, 4 , 4, 0, c_white, 1)
	
	draw_set_color(c_white)
	
	draw_text(300, 700, "MarIA - Fundadora da EcoTech")
	
	draw_set_halign(fa_center)
	draw_text(room_width - 150, 700, "Clique para passar ->")
	
	draw_set_halign(fa_left)
	
	draw_text(300, 600, lista_falas[fala])

}

if(desenhar_exercicio) {
	
	// RETANGULO ATRAS
	draw_set_color(#AB61D9)
	draw_set_alpha(1)
	draw_rectangle( 300, 150, 0, 250, 0)
	
	// RETANGULO ATRAS
	draw_set_color(#9654BF)
	draw_set_alpha(1)
	draw_rectangle( 300, 250, 0, 270, 0)
	
	// COR DO TEXTO
	draw_set_color(c_white)
	
	// TIPO DE LIXO
	draw_text(200, 185, string_upper(tipo_lixo))
	
	// SPRITE DO LIXO
	draw_sprite_ext(sprite_lixo, 0, 50, 200, 3, 3,0, c_white, 1)
	
	//alinhar texto
	draw_set_halign(fa_center)
	
	draw_set_color(c_white)
}