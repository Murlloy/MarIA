global.bloqueado = true
global.final = true


function contar_lixo(tipo, acertou)
{
	var lista = variable_struct_get(global.lixos_contados, tipo);
	
	if (acertou)
	{
		lista[0] += 1; // acertos
	}
	else
	{
		lista[1] += 1; // erros
	}
	
	lista[2] += 1; // total
	
	variable_struct_set(global.lixos_contados, tipo, lista);
}

function total_geral_lixos()
{
	return
	global.lixos_contados.plastico[2] +
	global.lixos_contados.metal[2] +
	global.lixos_contados.vidro[2] +
	global.lixos_contados.papel[2] +
	global.lixos_contados.organico[2];
}

control_falas.fala = 0