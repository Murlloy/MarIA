

if(global.pausado or obj_controller._fim_partida){
	alarm[0] = 250
	exit
}


randomize()

pos_x = irandom_range(0, room_width)
pos_y = irandom_range(0, 540)


var lixo = instance_create_layer(pos_x, pos_y, "Instances", obj_lixo)

lixo.tipo_lixo = choose("metal", "plastico", "organico", "papel", "vidro")

lixo.image_xscale = 5;
lixo.image_yscale = 5;

alarm[0] = 150