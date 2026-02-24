
audio_play_sound(snd_exit, 1, false)

if(room == SelecionarMapa) {
	room_goto(Menu)
}else {
	room_goto(SelecionarMapa)
}