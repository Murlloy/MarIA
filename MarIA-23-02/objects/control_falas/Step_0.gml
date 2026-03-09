if(desenhar_falas){
	
	global.pausado = true
	global.bloqueado = true

	if(delay >= 0)
		delay--
	else {
		if(keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)){
			if(fala >= array_length(lista_falas) - 1) {
				obj_controller.tempo_atual = 10000
				global.pausado = false
				global.bloqueado = false
				obj_controller_tutorial.pode_passar = true
				show_debug_message("Passou")
				fala = 0
				desenhar_falas = false
				delay = max_delay
			}else {
				fala += 1
				delay = max_delay
			} 
			
		}
	}
}

