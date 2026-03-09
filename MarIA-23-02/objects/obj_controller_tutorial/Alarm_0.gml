if(object_exists(obj_lixo)){
		switch (lixos_ensinados) {
			case 0:
				var tutorial_lixo = instance_create_depth(room_width/2, room_height/2, 0, obj_lixo)
				tutorial_lixo.image_xscale = 5
				tutorial_lixo.image_yscale = 5
				tutorial_lixo.lixo_padrao = tipo_lixos
				tutorial_lixo.tutorial = true
				lixos_ensinados = 0.5
		}		
}
