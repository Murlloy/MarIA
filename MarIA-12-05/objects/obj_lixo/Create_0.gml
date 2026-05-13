tutorial = false

tipo_lixo = "plastico"
lixo_certo = ""
cor = ""

sprite_lixo = spr_lixo_plastico

tempo_atual = 0
tempo_max = 238

lixos_contados = noone

switch tipo_lixo
{
	case "plastico":
			
		lixos_contados = global.lixos_contados.plastico
		break
		
	case "metal":
	
		lixos_contados = global.lixos_contados.metal
		break
	
	case "vidro":
	
		lixos_contados = global.lixos_contados.vidro
		break
		
	case "papel":
	
		lixos_contados = global.lixos_contados.papel
		break
		
	case "organico":
	
		lixos_contados = global.lixos_contados.organico
		break
}

image_speed = 0

delaymax = 30
delay = 0