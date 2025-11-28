draw_self();

draw_text(room_width/2, room_height/2, string(opcao_selecionada))

if(_desenharPause)
{

	draw_set_color(c_black)
	draw_set_alpha(.6)
	draw_rectangle(0,0,room_width, room_height, 0)
	
	draw_set_halign(fa_center)
	
	
	for(var i = 0; i < array_length(opcoes); i++) 
	{
		
		if(opcao_selecionada == i){
			draw_set_color(c_yellow)
			draw_text(room_width /2, room_height/2 - (i * -30), string(opcoes[i]))
		}else {
			draw_set_color(c_white)
			draw_text(room_width /2, room_height/2 - (i * -30), string(opcoes[i]))
		}
		
		
	}
	
	
	

}