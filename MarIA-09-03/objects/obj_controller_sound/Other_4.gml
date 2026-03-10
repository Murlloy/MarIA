switch (room) {

    case Menu:
	
		if(musica_atual != snd_menu) 
		{
		
			audio_stop_all();
			musica_atual = snd_menu
	        audio_play_sound(snd_menu, 1, true);
		
		}
    break;

    case Partida:
        
		switch(global.mapa_selecionado) 
		{
			case 1:                
				audio_stop_all();	//sons mapa 1		
				audio_play_sound(snd_floresta, 1, true);
				break;
				
			case 2:
				audio_stop_all();	//sons mapa 2
				audio_play_sound(snd_ocean, 1, true);
				break;
				
			case 3:
				audio_stop_all();	//sons mapa 3
				audio_play_sound(snd_cidade, 1, true);
				break;
		}
		
    break;
	
}
