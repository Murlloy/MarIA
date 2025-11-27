

if(global.pausado){
	alarm[0] = 250
	exit
}


randomize()

pos_x = irandom_range(0, room_width)
pos_y = irandom_range(0, room_height - 50)

if((pos_x > 270 && pos_x < 1000) && (pos_y > 530 && pos_y < 800)){
	alarm[0] = 1
	return
}


var lixo = instance_create_layer(pos_x, pos_y, "Instances", obj_lixo)

lixo.tipo_lixo = choose("metal", "plastico", "organico", "papel")

lixo.image_xscale = 3;
lixo.image_yscale = 3;

alarm[0] = 250