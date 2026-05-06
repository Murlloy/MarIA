
audio_play_sound(snd_exit, 1, false)

draw_set_halign(fa_center)

if( room == Final)
{
	global.bloqueado = false
	global.final = false
	room_goto(Menu)

} else if(room == SelecionarMapa) {
	room_goto(Menu)
}else {
	room_goto(SelecionarMapa)
}