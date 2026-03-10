if(desenhar_falas){

draw_set_color(c_black)
draw_set_alpha(.4)
draw_rectangle(0,0,room_width,room_height,false)

draw_set_alpha(1)

draw_set_color(c_black)
draw_rectangle(0,room_height-200,room_width,room_height,false)

draw_set_color(c_white)

draw_text(300,600,lista_falas[fala])

draw_text(room_width-200,700,"Clique para continuar")

}