tutorial = false

tipo_lixo = "Plastico"
lixo_certo = ""
cor = ""

lixos_contados = noone

switch tipo_lixo
{
	case "Plastico":
		lixos_contados = global.lixos_contados.plastico
		break
		
	case "Metal":
		lixos_contados = global.lixos_contados.metal
		break
	
	case "Vidro":
		lixos_contados = global.lixos_contados.vidro
		break
		
	case "Papel":
		lixos_contados = global.lixos_contados.papel
		break
		
	case "Organico":
		lixos_contados = global.lixos_contados.organico
		break
}

image_speed = 0

delaymax = 30
delay = 0