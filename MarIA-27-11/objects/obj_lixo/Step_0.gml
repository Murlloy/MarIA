
if(global.pausado){
	exit
}

var distancia_mouse = point_distance(x, y, mouse_x, mouse_y)

mouse_segurando = mouse_check_button(mb_left)

	


if(!global._segurando){
	if(distancia_mouse < 80) {
	
		if(mouse_segurando) {
				
			global.lixo_selecionado = instance_nearest(mouse_x,mouse_y, obj_lixo)
			delay = delaymax
			global._segurando = true
		}
		image_index = 1
	}else {
		image_index = 0
	}
}

if(global._segurando) {
	
	if(global.lixo_selecionado) {
		global.lixo_selecionado.x = mouse_x
		global.lixo_selecionado.y = mouse_y
	}
	
	if(!mouse_segurando){
		global._segurando = false
		global.lixo_selecionado = undefined
	}

	
}


switch(tipo_lixo) {

	case "metal":
		sprite_index = spr_lixo_metal;
		lixo_certo = "Metal"
		break;
		
	case "plastico":
		sprite_index = spr_lxo_plastico;
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
		

}

if(place_meeting(x, y, obj_lata_lixo)){

	var lixo = instance_place(x, y, obj_lata_lixo)

	if(lixo.tipo_lixo = lixo_certo){
		global.pontos += 20
	}else {
		global.pontos -= 10
	}
	
	global._segurando = undefined
	
	instance_destroy()
	

}