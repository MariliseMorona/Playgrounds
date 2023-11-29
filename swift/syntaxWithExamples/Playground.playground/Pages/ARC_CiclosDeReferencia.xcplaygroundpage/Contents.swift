//: [Previous](@previous)

import Foundation


/**
Swift usa ARC Contagem Automatica de Referencia para rastrear e gerenciar o uso da memoria.
Ou seja o ARC libera automaticamente a memoria usada pelas instancias de classe quando elas nao sao mais necessarias.
Apenas as instancias de classes aplicam-se a Contagem de Referencias. Ou seja structs e enum sáo tipos de valor, nao sao passados ou armazenados por referencia.
 
 Toda vez que se cria uma nova instancia de uma classe é alocado um pedaco da memoria para armazenar informacoes sobre essa instancia. Essa memoria contem informacoes sobre o tipo da instancia e os valores das propriedades armazenadas associadas a essa instancia.
 
 Quando a class A referencia a class B, e a class B referencia a class A ocorre o memory leak.
 Memory leak: a memoria esta ocupada e nao consegue desocupar.
 
 Para resolver teria de ser atribuido o valor nil pra uma das classes, o que decrementaria  a referencia.
 Ou tornar a referencia fraca setando weak na variavel e o ARC vai entende-la como uma instancia opcional, ou seja ela pode ser nula.
 */


/**
 
 Servem para despreender as informacoes do contexto
 weak self: deve ser utilizado para quando precisa=se que a variavel seja opcional
 
 unowned self: deve ser utilziada quando vc faz uma referencia fraca porem voce faz um force unwrap, ou seja a variaevel nao pode sre nula. o contexto ainda é opcional mas a variavel se for nula ira crachasr o app.
 usar quando a acao [e imediata e seu contexto existe.
 
 
 se nao colocar pode cair no clico de retencao de memoria
 */


