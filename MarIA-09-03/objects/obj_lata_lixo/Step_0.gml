
if(delay >= 0){
	delay--
}else {
		
	switch(tipo_lixo) {
		
		case "Plastico":
			image_index = 0
			imagem = 0
			break;
		
		case "Metal":
			image_index = 2
			imagem = 2
			break;
		
		case"Papel":
			image_index = 4
			imagem = 4
			break;
		
		case "Vidro":
			image_index = 6
			imagem = 6
			break;
		
		
		case"Organico": 
			image_index = 8
			imagem = 8
			break;
		
	}
	
}
