draw_self();

draw_set_font(font_mine)

// desenhar tempo

draw_text(100, 80, "Tempo: " + string(tempo_atual))

draw_text(room_width - 150, 80, "Pontuação: " + string(global.pontos))

if(_desenharPause )
{

	draw_set_color(c_black)
	draw_set_alpha(.6)
	draw_rectangle(0,0,room_width, room_height, 0)
	
	draw_set_halign(fa_center)
	
	
	for(var i = 0; i < array_length(opcoes); i++) 
	{
		
		if(opcao_selecionada == i){
			draw_set_color(c_yellow)
			draw_text(room_width /2, room_height/2 - (i * -60), string(opcoes[i]))
		}else {
			draw_set_color(c_white)
			draw_text(room_width /2, room_height/2 - (i * -60), string(opcoes[i]))
		}
		
		
	}
	
	draw_set_colour(c_white)

}

//desenhar fim de jogo

if(_fim_partida) 
{
	draw_set_color(c_black)
	draw_set_alpha(.6)
	draw_rectangle(0,0,room_width, room_height, 0)
	
	draw_set_colour(c_white)
	
	draw_set_halign(fa_center)
	
	
	for(var i = 0; i < array_length(opcoes); i++) 
	{
		
		if(opcao_selecionada == i){
			draw_set_color(c_yellow)
			draw_text(room_width /2, room_height/2 - (i * -60), string(opcoes[i]))
		}else {
			draw_set_color(c_white)
			draw_text(room_width /2, room_height/2 - (i * -60), string(opcoes[i]))
		}
		
		
	}
	
	draw_set_colour(c_white)
	
	
	switch(estrelas) {
	
		case 0:
			for(var i = 0; i < 3; i++) {
				draw_sprite_ext(spr_star, 1, room_width/2 + (i * 150) - 150, y - 50, 6, 6, 0, c_white, 1)
				draw_text(room_width/2 + (i * 150) - 150, y + 20, configuracoes[global.fase_selecionada - 1, i])
			}
			break;
			
		case 1:
			for(var i = 0; i < 3; i++) {
				
				if(i == 0) {
					draw_sprite_ext(spr_star, 0, room_width/2 + (i * 150) - 150, y - 50, 6, 6, 0, c_white, 1)
					continue
				}
				
				draw_sprite_ext(spr_star, 1, room_width/2 + (i * 150) - 150, y - 50, 6, 6, 0, c_white, 1)
				
				draw_text(room_width/2 + (i * 150) - 150, y + 20, configuracoes[global.fase_selecionada - 1, i])
			}
			break;
			
		case 2:
			for(var i = 0; i < 3; i++) {
				
				if(i == 1 or i == 0) {
					draw_sprite_ext(spr_star, 0, room_width/2 + (i * 150) - 150, y - 50, 6, 6, 0, c_white, 1)
					continue
				}
				
				draw_sprite_ext(spr_star, 1, room_width/2 + (i * 150) - 150, y - 50, 6, 6, 0, c_white, 1)
				
				draw_text(room_width/2 + (i * 150) - 150, y + 20, configuracoes[global.fase_selecionada - 1, i])
			}
			break;
			
		case 3:
			for(var i = 0; i < 3; i++) {
				
				draw_sprite_ext(spr_star, 0, room_width/2 + (i * 150) - 150, y - 50, 6, 6, 0, c_white, 1)
				
				draw_text(room_width/2 + (i * 150) - 150, y + 20, configuracoes[global.fase_selecionada - 1, i])
			}
			break;
	
	}
	
}
