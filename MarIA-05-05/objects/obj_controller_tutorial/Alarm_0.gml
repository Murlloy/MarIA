if(!instance_exists(obj_lixo)){

    var lixo = instance_create_layer(room_width/2, room_height/2, "Instances", obj_lixo)

    lixo.tipo_lixo = tipo_lixo
	lixo.image_xscale = 5
	lixo.image_yscale = 5
    lixo.sprite_index = sprite_lixo
    lixo.tutorial = true

}