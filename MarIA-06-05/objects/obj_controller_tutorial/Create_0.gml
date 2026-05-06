if(!global.tutorial) instance_destroy()

pode_passar = false

_finalizacao = false

enum TUTORIAL {
    falas,
    exercicios,
    finalizacao
}

// Lista simples de falas organizadas por índice
falas_tutorial = [
    
    // 0 = plástico
    [
        "Vamos começar!",
        "Este é o lixo PLÁSTICO.",
        "Ele deve ir na lixeira VERMELHA."
    ],

    // 1 = metal
    [
        "Agora o METAL.",
        "Ele deve ir na lixeira AMARELA."
    ],

    // 2 = papel
    [
        "Este é o PAPEL.",
        "Ele deve ir na lixeira AZUL."
    ],

    // 3 = vidro
    [
        "Este é o VIDRO.",
        "Ele deve ir na lixeira VERDE."
    ],

    // 4 = orgânico
    [
        "Este é o ORGÂNICO.",
        "Ele deve ir na lixeira MARROM."
    ]
];

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