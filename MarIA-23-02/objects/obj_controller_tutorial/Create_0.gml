
desenhar_falas = false
desenhar_exercicio = false

delay = 0
max_delay = 30


enum TUTORIAL {
	falas,
	exercicios,
	finalizacao
}

estado_tutorial = TUTORIAL.falas
// inicio das falas
lista_falas = ["Bem vindo a MarIA - EcoGame, aqui será ensinado como descartar corretamente o lixo", 
"Vamos Começar!!"]

fala = 0

// parte do exercicios
lixos_totais = 5
lixo_atual = 0
lixos_ensinados = 0

switch lixo_atual {
	case 0:
		tipo_lixo = "plastico"
		sprite_lixo = spr_lixo_plastico
		break;
		
	case 1:
		tipo_lixo = "metal"
		sprite_lixo = spr_lixo_metal
		break;
		
	case 2:
		tipo_lixo = "papel"
		sprite_lixo = spr_lixo_papel
		break;
		
	case 3:
		tipo_lixo = "vidro"
		sprite_lixo = spr_lixo_vidro
		break;
		
	case 4:
		tipo_lixo = "organico"
		sprite_lixo = spr_lixo_organico
		break;
		
}

function criarLixo(tipo_lx) {
	var lixo = instance_create_depth(room_width/2, room_height /2, 1, obj_lixo)
	lixo.tipo_lixo = tipo_lx
}

