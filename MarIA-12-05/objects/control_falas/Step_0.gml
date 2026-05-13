if (active)
{
    // Chegou ao fim das falas
    if (fala_atual >= array_length(list_falas))
    {
        active = false;
        list_falas = [];
        fala_atual = 0;
    }
    else
    {
        // Delay entre falas
        if (delay >= 0)
        {
            delay--;
        }
        else
        {
            // Clique para avançar
            if (mouse_check_button_pressed(mb_left))
            {
				
                // Próxima fala seria a última?
                if (fala_atual + 1 >= array_length(list_falas))
                {
					
					if(global.tutorial) 
					{
						obj_controller_tutorial.pode_passar = true
					}
                    active = false;
                    list_falas = [];
                    fala_atual = 0;
					
					global.pausado = false
					global.bloqueado = false
                }
                else
                {
                    fala_atual+=1;
                    delay = delay_max;
                }
            }
        }
    }
}