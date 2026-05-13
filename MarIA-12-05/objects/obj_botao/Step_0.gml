
var controller = instance_exists(obj_controller);
var tutorial = instance_exists(obj_controller_tutorial);
var falas = instance_exists(control_falas);

var fim_partida =
    controller && obj_controller._fim_partida;

var fim_tutorial =
    tutorial && obj_controller_tutorial._finalizacao;

if (fim_partida || fim_tutorial)
{
    if (nome_botao != "Voltar")
    {
        exit;
    }

    image_alpha = 1
    exit;
}

if instance_exists(control_falas) and instance_exists(obj_controller_tutorial) {
	if obj_controller._fim_partida or obj_controller_tutorial._finalizacao
	{
		var fim_partida = instance_find(obj_botao, 2)
		fim_partida.image_alpha = 1
		exit
	}
}

if instance_exists(control_falas) {
	if !global.pausado or control_falas.active
	{
		image_alpha = 0
		exit
	}else 
	{
		image_alpha = 1
	}
}

image_alpha = 1

switch nome_botao{
	case "Jogar":
		sprite_index = spr_botao
		break;
	case "Creditos":
		sprite_index = spr_options_button
		break;
	case "Sair":
		sprite_index = spr_exit_button
		break;
}