
tutorial = false

lixo_padrao = "plastico"

switch(lixo_padrao) {

	case "metal":
		sprite_index = spr_lixo_metal;
		lixo_certo = "Metal"
		break;
		
	case "plastico":
		sprite_index = spr_lixo_plastico;
		lixo_certo = "Plastico"
		break;
		
	case "organico":
		sprite_index = spr_lixo_organico;
		lixo_certo = "Organico"
		break;
		
	case"papel":
		sprite_index = spr_lixo_papel;
		lixo_certo = "Papel"
		break;
		
	case"vidro":
		sprite_index = spr_lixo_vidro;
		lixo_certo = "Vidro"
		break;
		

}

lixo_certo = "plastico"
image_speed = 0

delaymax = 30
delay = 0
