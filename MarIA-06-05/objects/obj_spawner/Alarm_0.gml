

if(obj_controller._fim_partida or global.tutorial or global.pausado){
	alarm[0] = 250
	exit
}

var pos_x = irandom_range(10, room_width)
var pos_y = irandom_range(50, 540)


var lixo = instance_create_layer(pos_x, pos_y, "Instances", obj_lixo)

lixo.tipo_lixo = choose("metal", "plastico", "organico", "papel", "vidro")

lixo.image_xscale = 5;
lixo.image_yscale = 5;

alarm[0] = 120