// =====================================
// BLOQUEIO GLOBAL (FALAS ATIVAS)
// =====================================

switch (nome_botao)
{
    case "Jogar":
        room_goto(SelecionarMapa);
    break;

    case "Creditos":
        room_goto(Final);
    break;

    case "Sair":
        game_end();
    break;
}

if (instance_exists(control_falas) && control_falas.active)
{
    exit;
}


// =====================================
// CHECAGEM DE ESTADO
// =====================================

var controller = instance_exists(obj_controller);
var tutorial = instance_exists(obj_controller_tutorial);

var fim_partida =
    controller && obj_controller._fim_partida;

var fim_tutorial =
    tutorial && obj_controller_tutorial._finalizacao;


// =====================================
// MENU FINAL (SÓ VOLTAR)
// =====================================

if (fim_partida || fim_tutorial)
{
    if (nome_botao == "Voltar")
    {
        global.pausado = false;
        global.tutorial = false;

        room_goto(SelecionarFase);
    }

    exit;
}


// =====================================
// MENU PAUSE
// =====================================

if (global.pausado)
{
    switch (nome_botao)
    {
        case "Continuar":
            global.pausado = false;
        break;

        case "Voltar":
            room_goto(SelecionarFase);
        break;
    }

    exit;
}


// =====================================
// MENU NORMAL
// =====================================

switch (nome_botao)
{
    case "Jogar":
        room_goto(SelecionarMapa);
    break;

    case "Creditos":
        room_goto(Final);
    break;

    case "Sair":
        game_end();
    break;
}