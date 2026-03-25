if(global.pausado or obj_controller._fim_partida){
    exit
}


// definir sprite e tipo correto
switch(tipo_lixo){

    case "metal":
        sprite_index = spr_lixo_metal
        lixo_certo = "Metal"
		cor = "Amarela"
    break;

    case "plastico":
        sprite_index = spr_lixo_plastico
        lixo_certo = "Plastico"
		cor = "Vermelha"
    break;

    case "organico":
        sprite_index = spr_lixo_organico
        lixo_certo = "Organico"
		cor = "Marrom"
    break;

    case "papel":
        sprite_index = spr_lixo_papel
        lixo_certo = "Papel"
		cor = "Azul"
    break;

    case "vidro":
        sprite_index = spr_lixo_vidro
        lixo_certo = "Vidro"
		cor = "Verde"
    break;

}



// distância do mouse
var distancia_mouse = point_distance(x,y,mouse_x,mouse_y)


// selecionar lixo
if(!global._segurando){

    if(distancia_mouse < 80){

        if(mouse_check_button_pressed(mb_left)){

            global.lixo_selecionado = id
            global._segurando = true

        }

        image_index = 1

    } else {

        image_index = 0

    }

}



// arrastar lixo
if(global._segurando && global.lixo_selecionado == id){

    x = mouse_x
    y = mouse_y

    if(mouse_check_button_released(mb_left)){

        global._segurando = false
        global.lixo_selecionado = undefined

    }

}