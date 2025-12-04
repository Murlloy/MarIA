draw_self()


if(desbloqueado) {

	switch(fase[numero_fase - 1]) {
	
		case 0:
			for(i = 0; i < 3; i++) {
				draw_sprite_ext(spr_star, 1, x + (i * 40) - 40, y - 50, 2, 2, 0, c_white, 1)
			}
			break;
			
		case 1:
			for(i = 0; i < 3; i++) {
				
				if(i == 0) {
					draw_sprite_ext(spr_star, 0, x + (i * 40) - 40, y - 50, 2, 2, 0, c_white, 1)
					continue
				}
				
				draw_sprite_ext(spr_star, 1, x + (i * 40) - 40, y - 50, 2, 2, 0, c_white, 1)
			}
			break;
			
		case 2:
			for(i = 0; i < 3; i++) {
				
				if(i == 1 or i == 0) {
					draw_sprite_ext(spr_star, 0, x + (i * 40) - 40, y - 50, 2, 2, 0, c_white, 1)
					continue
				}
				
				draw_sprite_ext(spr_star, 1, x + (i * 40) - 40, y - 50, 2, 2, 0, c_white, 1)
			}
			break;
			
		case 3:
			for(i = 0; i < 3; i++) {
				
				draw_sprite_ext(spr_star, 0, x + (i * 40) - 40, y - 50, 2, 2, 0, c_white, 1)
			}
			break;
	
	}
	
}