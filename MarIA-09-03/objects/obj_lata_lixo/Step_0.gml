
if(delay >= 0){
	delay--
}else {
		
	if(global.tutorial)
	{
		
	}		

	switch(tipo_lixo) {
		
		case "Plastico":
			if(global.cor_certa == tipo_lixo)
			{
				sprite_index = spr_red_pisca
			}
			else 
			{
				sprite_index = spr_lata
				image_index = 0
				imagem = 0
			}
			break;
		
		case "Metal":
			if(global.cor_certa == tipo_lixo)
			{
				sprite_index = spr_yellow_pisca
			}
			else 
			{
				sprite_index = spr_lata
				image_index = 2
				imagem = 2
			}
			break;
		
		case"Papel":
			if(global.cor_certa == tipo_lixo)
			{
				sprite_index = spr_blue_pisca
			}
			else 
			{
				sprite_index = spr_lata
				image_index = 4
				imagem = 4
			}
			break;
		
		case "Vidro":
			if(global.cor_certa == tipo_lixo)
			{
				sprite_index = spr_green_pisca
			}
			else 
			{
				sprite_index = spr_lata
				image_index = 6
				imagem = 6
			}
			break;
		
		
		case"Organico": 
			if(global.cor_certa == tipo_lixo)
			{
				sprite_index = spr_brown_pisca
			}
			else 
			{
				sprite_index = spr_lata
				image_index = 8
				imagem = 8
			}
			break;
		
	}
	
}