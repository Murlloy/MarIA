//sistema para selecionar mapa
global.mapa_selecionado = undefined
global.fase_selecionada = undefined

// estrelas
global.estrelas = 0

// fases desbloqueadas

global.fases_desbloqueadas = {

	mundo1: [
		true,	// fase 1
		false,	// fase 2
		false,	// fase 3
		false,	// fase 4
		false,	// fase 5
		false,	// fase 6
		false,	// fase 7
		false,	// fase 8
		false,	// fase 9
		false // fase 10
	],
	
	mundo2: [
		true,		// fase 1
		false,	// fase 2
		false,	// fase 3
		false,	// fase 4
		false,	// fase 5
		false,	// fase 6
		false,	// fase 7
		false,	// fase 8
		false,	// fase 9
		false // fase 10
	],
	
	mundo3: [
		true,		// fase 1
		false,	// fase 2
		false,	// fase 3
		false,	// fase 4
		false,	// fase 5
		false,	// fase 6
		false,	// fase 7
		false,	// fase 8
		false,	// fase 9
		false // fase 10
	]
	
}

// estrelas necessarias

global.configuracoes_fase = {
    // Mundo 1
	
	// star1, star2, star3, tempo
	
    mundo1: [
        [150, 220, 300, 60], // fase 1
        [200, 260, 340, 60], // fase 2
        [220, 280, 380, 60]  // fase 3
    ],

    // Mundo 2
    mundo2: [
        [300, 380, 450, 60], // fase 1
        [320, 400, 480, 60]  // fase 2
    ],
	
	mundo3: [
		[400, 420, 450],
		[410, 450, 500] 
	]
};

// dados salvos fases

global.quantidade_estrelas_fase = {

	mundo1: [
		0,		// fase 1
		0,	// fase 2
		0,	// fase 3
		0,	// fase 4
		0,	// fase 5
		0,	// fase 6
		0,	// fase 7
		0,	// fase 8
		0,	// fase 9
		0 // fase 10
	],
	
	mundo2: [
		0,		// fase 1
		0,	// fase 2
		0,	// fase 3
		0,	// fase 4
		0,	// fase 5
		0,	// fase 6
		0,	// fase 7
		0,	// fase 8
		0,	// fase 9
		0 // fase 10
	],
	
	mundo3: [
		0,		// fase 1
		0,	// fase 2
		0,	// fase 3
		0,	// fase 4
		0,	// fase 5
		0,	// fase 6
		0,	// fase 7
		0,	// fase 8
		0,	// fase 9
		0 // fase 10
	]
	
}


// sistema de pegar lixos
global.lixo_selecionado = undefined
global._segurando = false


// pontos da fase;
global.pontos = 0


//sistema de pause
global.pausado = false



function Script1(){

}