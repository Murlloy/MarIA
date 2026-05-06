draw_self()

draw_set_color(c_black)
draw_set_alpha(.6)
draw_rectangle(0,0,room_width, room_height, 0)

draw_set_alpha(1)

draw_set_color(c_white)

draw_sprite_ext(spr_logo, 0, room_width/2, 260, 1, 1, 0, c_white, 1)

draw_set_halign(fa_center)
draw_set_font(font_mine)


draw_text(room_width/2,room_height/2,"Lixos Certos: " + string(total_certos_lixos()));
draw_text(room_width/2,room_height/2 + 40,"Lixos Errados: " + string(total_errados_lixos()));
draw_text(room_width/2,room_height/2 + 80,"Lixos Geral: " + string(total_geral_lixos()));

draw_set_halign(fa_center)

draw_text(room_width/2,room_height - 100,"Jogo Feito por Murillo, Maria, Nauan e Gabriel");
