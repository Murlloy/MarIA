if(delay >= 0)
		delay--
	else {
		if(keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)){
			if(fala >= array_length(lista_falas) - 1) {
				desenhar_falas = false
			}else {
				fala += 1
		} 
		}
	}
