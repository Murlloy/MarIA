image_index = numero_fase - 1

mundo = undefined
fase = undefined

switch(global.mapa_selecionado) {

	case 1:
		mundo = global.fases_desbloqueadas.mundo1
		fase = global.quantidade_estrelas_fase.mundo1
		break;
		
	case 2:
		mundo = global.fases_desbloqueadas.mundo2
		fase = global.quantidade_estrelas_fase.mundo2
		break;

	case 3:
		mundo = global.fases_desbloqueadas.mundo3
		fase = global.quantidade_estrelas_fase.mundo3
		break;
}

desbloqueado = mundo[numero_fase - 1]