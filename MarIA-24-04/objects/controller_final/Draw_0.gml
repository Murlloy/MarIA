draw_self()

draw_set_color(c_black)
draw_set_alpha(.6)
draw_rectangle(0,0,room_width, room_height, 0)

draw_set_alpha(1)

draw_set_color(c_white)

draw_sprite_ext(spr_logo, 0, room_width/2, 260, 1, 1, 0, c_white, 1)

draw_set_halign(fa_left)
draw_set_font(font_mine)


draw_text(room_width/2 - 100,room_height/2,"Plástico Errados: " + string(global.lixos_contados.plastico[2]));
draw_text(room_width/2 - 100,room_height/2 + 40,"Metal Errados: " + string(global.lixos_contados.metal[2]));
draw_text(room_width/2 - 100,room_height/2 + 80,"Total Geral: " + string(total_geral_lixos()));


