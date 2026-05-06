
if(!desbloqueado) 
{
	image_index = 1
}else {
	image_index = 0
}

switch(fase) {
	case 1:
		sprite_index = spr_forest
		break;
		
	case 2:
		sprite_index = spr_beach;
		break;
		
	case 3:
		sprite_index = spr_loja_jao_pequeno;
		break;
}