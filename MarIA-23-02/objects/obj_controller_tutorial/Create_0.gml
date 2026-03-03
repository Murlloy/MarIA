
pode_passar = false

enum TUTORIAL {
	falas,
	exercicios,
	finalizacao
}

estado_tutorial = TUTORIAL.falas


// parte do exercicios
lixos_totais = 5
lixo_atual = 0
lixos_ensinados = 0

switch lixo_atual {
	case 0:
		tipo_lixos = "plastico"
		sprite_lixo = spr_lixo_plastico
		break;
		
	case 1:
		tipo_lixos = "metal"
		sprite_lixo = spr_lixo_metal
		break;
		
	case 2:
		tipo_lixos = "papel"
		sprite_lixo = spr_lixo_papel
		break;
		
	case 3:
		tipo_lixos = "vidro"
		sprite_lixo = spr_lixo_vidro
		break;
		
	case 4:
		tipo_lixos = "organico"
		sprite_lixo = spr_lixo_organico
		break;
		
}

