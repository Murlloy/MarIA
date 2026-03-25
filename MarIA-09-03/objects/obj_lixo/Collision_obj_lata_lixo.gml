var lata = other

if(lata.tipo_lixo == lixo_certo){

    global.pontos += 20
	
	global.cor_certa = noone

    if(tutorial){
        with(obj_controller_tutorial){

            lixo_atual += 1
            etapa_iniciada = false

            if(lixo_atual >= lixos_totais){
                estado_tutorial = TUTORIAL.finalizacao
            }

        }
    }

}else{

    global.pontos -= 10

    with(control_falas){
		

        lista_falas = [
        "Ops!",
        "Essa não é a lixeira correta.",
		"A correta é a " + other.cor,
        "Tente novamente!"
        ]
		
		global.cor_certa = other.lixo_certo
		
        fala = 0
        desenhar_falas = true

    }

}


// LIBERA O SISTEMA DE SEGURAR
global._segurando = false
global.lixo_selecionado = noone


audio_play_sound(snd_jogar_fora,1,false)

instance_destroy()