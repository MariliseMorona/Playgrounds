//: [Previous](@previous)

import Foundation

/**
 Se a tela nao for carregada ela chama
 viewDidLoad, ou seja ele só é chamado depois que a view for carregada
 * carrega e vincula outlets
 * chamada de api
 Nao adianta executar no viewDidLoad açoes do tipo de calculo e tamanho de tela, pois ele ainda nao sabe o device que sera carregado
 Só é executado uma vez
 
 chamado quando a tela vai aparecer, vai começar a carregar a view
 viewillAppear
 É chamado toda vez que a tela for carregar, quando ocorre retorno a tela ou refresh
 Starttar observables
 
 chamado depois que a tela esta pronta
 viewDidAppear
 * usado para carregar animacoes
 * timer
 Nao é recomendado fazer calculo de tela
 
 chamado quando a view vai desaparecer
 viewWillDisappear
 * parar animacoes
 * parar timer
 * parar observables
 
 chamado quando a tela nao esta mais visivel, porem ainda nao desapareceu
 viewDisappear
 * salvar status no core data, user defaults
 
 
 
 
 Calculos extensos em metodos errados do ciclo podem sobrecarregar o processamento
 
 layoutSubviews
 Calculos de tela
 
 */
