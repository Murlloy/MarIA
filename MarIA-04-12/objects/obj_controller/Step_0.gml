if(delay > 0){
	delay--
}else {

	if(keyboard_check_pressed(vk_escape)) 
	{
		global.pausado = !global.pausado;
		_desenharPause = !_desenharPause
		delay = max_delay
	}

}

if(global.pausado) 
{
	
	layer_hspeed("Background", 0)
	layer_vspeed("Background", 0)
	
	if(delay > 0){
		delay--
	}else {

		if(keyboard_check_pressed(vk_up)) 
		{
			if(opcao_selecionada <= 0) {
				opcao_selecionada = array_length(opcoes) - 1
			}else {
				opcao_selecionada -= 1
			}
		}
		
		if(keyboard_check_pressed(vk_down)) 
		{
			if(opcao_selecionada >= array_length(opcoes) - 1) {
				opcao_selecionada = 0
			}else {
				opcao_selecionada += 1
			}
		}

	}
	
	if(keyboard_check_pressed(vk_enter))
	{
		switch(opcao_selecionada) 
		{
			case 0: 
				global.pausado = false;
				_desenharPause = false;
				break;
				
			case 1:
				room_goto(Menu)
				break;
		}
	}
	
	
}else 
{
	layer_hspeed("Background", .4)
	layer_vspeed("Background", .4)
}