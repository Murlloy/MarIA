pode_passar = false

_finalizacao = false

enum TUTORIAL {
    falas,
    exercicios,
    finalizacao
}

estado_tutorial = TUTORIAL.falas

lixo_atual = 0
lixos_totais = 5

tipo_lixo = ""
sprite_lixo = noone

etapa_iniciada = false

// sistema de finalização
opcao_selecionada = 0
opcoes = [
	"Sair para o Menu",
]

//variaveis final
delay = 0
max_delay = 30