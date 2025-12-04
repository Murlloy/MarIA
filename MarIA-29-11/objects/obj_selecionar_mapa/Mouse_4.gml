global.mapa_selecionado = fase

if(desbloqueado) {
	room_goto(SelecionarFase)
}else {
	show_message("Fase Bloqueada!")
}
