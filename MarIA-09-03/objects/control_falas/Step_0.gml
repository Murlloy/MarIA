
if(!global.tutorial) exit;

if(desenhar_falas){

    global.pausado = true

    if(delay > 0){
        delay--
        exit
    }

    if(mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_enter)){

        if(fala >= array_length(lista_falas)-1){

            global.pausado = false

            obj_controller_tutorial.pode_passar = true

            fala = 0
            desenhar_falas = false

            delay = max_delay
			
			global.bloqueado = false

        }else{

            fala++
            delay = max_delay

        }

    }

}