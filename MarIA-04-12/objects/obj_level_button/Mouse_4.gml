
if(desbloqueado) {
	global.fase_selecionada = numero_fase
	room_goto(Partida)	
}else {
	show_message("Fase Bloqueada")
}