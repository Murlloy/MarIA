var lata = other


if(lata.tipo_lixo == lixo_certo){

    global.pontos += 20
	global.cor_certa = noone

    if(global.tutorial){
        with(obj_controller_tutorial){
            
			etapa_iniciada = false
			lixo_atual += 1
			if(!(lixo_atual + 1 > array_length(falas_tutorial)))
			{
				control_falas.list_falas = falas_tutorial[lixo_atual]
				control_falas.active = true
			}
			
			

            if(lixo_atual >= lixos_totais){
                estado_tutorial = TUTORIAL.finalizacao
            }
			
			global._segurando = false
			global.lixo_selecionado = noone

        }
		audio_play_sound(snd_jogar_fora,1,false)
		
		
		instance_destroy()
		exit
    }
	
	lixos_contados[0] += 1
	lixos_contados[2] += 1 
	
	audio_play_sound(snd_jogar_fora,1,false)
	instance_destroy()
	

}else{
	
	lixos_contados[1] += 1
	lixos_contados[2] += 1 
	
    global.pontos -= 10

    with(control_falas){
		

        list_falas = [
        "Ops!",
        "Essa não é a lixeira correta.",
		"A correta é a " + other.cor,
        "Tente novamente!"
        ]
		active = true
		
		global.cor_certa = other.lixo_certo
		
        fala = 0
        desenhar_falas = true
		global._segurando = false
		global.lixo_selecionado = noone

    }
	
	audio_play_sound(snd_jogar_fora,1,false)

		instance_destroy()

}


// LIBERA O SISTEMA DE SEGURAR
global._segurando = false
global.lixo_selecionado = noone


audio_play_sound(snd_jogar_fora,1,false)

instance_destroy()