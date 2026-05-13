if(global.pausado or obj_controller._fim_partida){
    exit
}

switch tipo_lixo 
{

	case "plastico":
		switch global.mapa_selecionado 
		{
			
			case 1:
				sprite_lixo = spr_lixo_plastico
				break;
				
			case 2:
				sprite_lixo = spr_lixo_plastico_mp2
				break;
				
			case 3:
				sprite_lixo = spr_lixo_plastico_mp3
				break;	
		}
		break;
	
	case "metal":
	
		switch global.mapa_selecionado 
		{
			
			case 1:
				sprite_lixo = spr_lixo_metal
				break;
				
			case 2:
				sprite_lixo = spr_lixo_metal_mp2
				break;
				
			case 3:
				sprite_lixo = spr_lixo_metal_mp3
				break;	
		}

		break
	
	case "vidro":
	
		switch global.mapa_selecionado 
		{
			
			case 1:
				sprite_lixo = spr_lixo_vidro
				break;
				
			case 2:
				sprite_lixo = spr_lixo_vidro_mp2
				break;
				
			case 3:
				sprite_lixo = spr_lixo_vidro_mp3
				break;	
		}
	
		break
		
	case "papel":
	
		switch global.mapa_selecionado 
		{
			
			case 1:
				sprite_lixo = spr_lixo_papel
				break;
				
			case 2:
				sprite_lixo = spr_lixo_papel_mp2
				break;
				
			case 3:
				sprite_lixo = spr_lixo_papel_mp3
				break;	
		}
	
		break
		
	case "organico":
	
		switch global.mapa_selecionado 
		{
			
			case 1:
				sprite_lixo = spr_lixo_organico
				break;
				
			case 2:
				sprite_lixo = spr_lixo_organico_mp2
				break;
				
			case 3:
				sprite_lixo = spr_lixo_organico_mp3
				break;	
		}
	
		break
}



if tempo_atual >= tempo_max 
{
	instance_create_depth(x,y, 1, obj_explosion)
	
	if (global.lixo_selecionado == id) 
	{
		global._segurando = false
		global.lixo_selecionado = noone
	}
	
	instance_destroy()
}

if(!global.tutorial)
{
	tempo_atual+=1
}


// definir sprite e tipo correto
switch(tipo_lixo){

    case "metal":
        sprite_index = sprite_lixo
        lixo_certo = "Metal"
		cor = "Amarela"
    break;

    case "plastico":
        sprite_index = sprite_lixo
        lixo_certo = "Plastico"
		cor = "Vermelha"
    break;

    case "organico":
        sprite_index = sprite_lixo
        lixo_certo = "Organico"
		cor = "Marrom"
    break;

    case "papel":
        sprite_index = sprite_lixo
        lixo_certo = "Papel"
		cor = "Azul"
    break;

    case "vidro":
        sprite_index = sprite_lixo
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
	
	if not global.tutorial 
	{
		global.cor_certa = global.lixo_selecionado.tipo_lixo
	}

    if(mouse_check_button_released(mb_left)){

        global._segurando = false
        global.lixo_selecionado = undefined

    }

}