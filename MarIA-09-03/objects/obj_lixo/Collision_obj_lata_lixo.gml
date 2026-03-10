var lata = other

if(lata.tipo_lixo == lixo_certo){

    global.pontos += 20

    if(tutorial){
        obj_controller_tutorial.lixo_atual += 1
        obj_controller_tutorial.etapa_iniciada = false

        if(obj_controller_tutorial.lixo_atual >= obj_controller_tutorial.lixos_totais){
            obj_controller_tutorial.estado_tutorial = TUTORIAL.finalizacao
        }
    }

}else{

    global.pontos -= 10

    control_falas.lista_falas = [
    "Ops!",
    "Essa não é a lixeira correta.",
    "Tente novamente!"
    ]

    control_falas.fala = 0
    control_falas.desenhar_falas = true

}

audio_play_sound(snd_jogar_fora,1,false)

instance_destroy()