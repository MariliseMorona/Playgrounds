//: [Previous](@previous)

import Foundation
import Darwin
import UIKit

/**Condicionais
 
 Sao estrtututas especiais que auxiliam na mudanca de fluxo da aplicacao.
 Usadas para tomadas de decisao e execucao de tarefas mediante a uma condicao previamente estabelecido.
 
 **/

/**Bloco IF
 Define se um bloco de codigo deve ser executado mediante a uma condicao.
 O bloco so sera executado caso a condicao for verdadeira.
 
 **/
do {
    let number = 10

    if number > 0 {
        print("O numero \(number) e um numero positivo")
    }
    print("Essa linha sera executada sempre")
}

do{
    let number = 30
    
    if number % 2 == 0 {
        print("O numero \(number) é numero par")
    }
    if number % 3 == 0 {
        print("O numero \(number) é divisivel por 3")
    }
}

/**
 Bloco IF / ELSE
 Define se um bloco A deve ser executado caso a condicao for verdadeira
 e um bloco B caso a condicao for falsa.
 
 */
do {
    let number = 20
    var polarity = ""
    
    if number > 0{
// Este bloco so sera executado se a condicao for veradadeira
        polarity = "positivo"
    }else {
// este bloco so sera executado se a condicao for falsa
        polarity = "negativo"
    }
    print("O numero \(number) eh um número \(polarity)")
}

do {
    let number = 50
    let maxValue = 100
    let minValue = 50
    
    if number >= minValue && number <= maxValue {
        print("O numero \(number) esta dentro do valor permitido de \(minValue) a \(maxValue)")
    } else {
        print("O numero nao se enquadra nos limites definidos.")
    }
}

do{
    let guests = ["Carol", "Willian", "Carlos", "Jonas"]
    let name = "Carol"
    
    if guests.contains(name){
        print("\(name) é um dos convidados da festa")
    } else {
        print("\(name) nao pode participar da festa")
    }
}

/**
 Bloco IF / ELSE IF / ELSE
 
 Define um bloco para ser executado pelo IF, um bloco para cada ELSE IF e um
 bloco para o ELSE.
 Quando uma condicao e atingida, todas as outras sao ignoradas.
 */

do {
    let number = 10
    var polarity = ""
    
    if number > 0 {
        polarity = "positivo"
    }else if number < 0 {
        polarity = "negativo"
    }else {
        polarity = "neutro"
    }
    let message = "O numero \(number) é \(polarity)"
    print(message)
}
    
do {
    let age = 20
    var group = ""
    
    if age < 5{
        group = "mirim"
    }else if age <= 10 {
        group = "infantil"
    } else if age < 20 {
        group = "sub-20"
    } else if age < 40 {
        group = "profissional"
    } else {
        group = "master"
    }
    
    let message = "O atleta tem \(age) anos de idade e pertence a categoria \(group)."
    print(message)
}


/**
 SWITCH / CASE
 
 Estruturas especiais que auxiliam na mudanca de fluxo da aplicacao. Usadas para tomadas de decisao e execucao de tarefas mediante a uma condicao previamente estabelecida.
 
 SWITCH è uma estrutura condicionai para encadear diversas opcoes chamadas case.
 
 Colocamos um objeto para ser avaliado e cada case representa uma das possiveis decisoes qe podemos tomar sobre o valor deste objeto.
 */

do {
    let rating = 0
    
    switch rating {
    case 0:
        print("pessimo")
    case 1:
        print("ruim")
    case 2:
        print("regular")
    case 3:
        print("bom")
    case 4:
        print("muito bom")
    case 5:
        print("excelente")
    default:
        //clausula default deve ser usada quando nao for
        // possivel prever todas as possiblidades
        print("excede as expectativas")
 
    }
}

/** Agrupamentos
 
 Podemos agrupar num unico case, situacoes que devem
 ter resultados semelhantes
 */

do {
    let letter = "A"
    
    switch letter.uppercased() {
    case "A", "E", "I", "O", "U":
        print("E uma vogal")
    case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
        print("E um numero")
    default:
        print("E uma consoante")
    }
}

/**Interval matching
 Comparando intervalos
 **/

do {
    let age = 5
    var group = ""
    
    switch age {
    case 0..<5:
        group = "mirim"
    case 5...10:
        group = "infantil"
    case 11..<20:
        group = "sub-20"
    case 20..<40:
        group = "profissional"
    default:
        group = "master"
    }
    
    let message = "O atleta tem \(age) anos de idade e pertence a categoria \(group)"
    print(message)
}

/**Dispensando a clausula DEFAULT
 Quando for possivel prever todos os possiveis valores
 nao e necessario usar default
 **/

do {
    let boolean = false
    
    switch boolean {
    case true:
        print("true")
    case false:
        print("false")
    }
}


/**
 IF
 */

var estaSol: Bool = true
var estaChovendo: Bool = true
var estaNublado: Bool = false
var descricaoTempo: String = "Ensolarado"

if estaSol {
    print("O sol esta visivel")
}

//operator and
if estaSol && estaChovendo {
    print("Chuva e Sol, casamento de espanhol.")
}

//operator not
if !estaNublado{
    print("Poxa, esta nublado. Neste caso o estaNublado foi negado, devido a presença do !antes da variável")
}

//operador or
if estaSol || estaChovendo{
    print("Pode ser que esteja sol, ou que esteja chovendo. Vai saber.")
}

//comparações
if 5 > 1{
    print("Sim, cinco é maior que um.")
}

if descricaoTempo == "Ensolarado"{
    print("Sim, o tempo esta ensolarado.")
}


/**
 IF & ELSE
 */

estaSol = false
estaChovendo = false
estaNublado = true
descricaoTempo = "Chuvoso"

if estaSol {
    print("O sol esta visivel")
} else{
    print("O sol não esta visivel")
}

//operator and
if estaSol && estaChovendo {
    print("Chuva e Sol, casamento de espanhol.")
} else{
    print("Não temos casamnto de espanhol hoje.")
}

//operator not
if !estaNublado{
    print("Poxa, esta nublado. Neste caso o estaNublado foi negado, devido a presença do !antes da variável")
} else {
    print("O dia esta aberto, que bom.")
}

//operador or
if estaSol || estaChovendo{
    print("Pode ser que esteja sol, ou que esteja chovendo. Vai saber.")
} else {
    print("Ops, parece que ou não esta sol, ou não esta chovendo. E agora, pegamos o protetor ou o guarda-chuvas ??")
}

//comparações
if 5 > 1{
    print("Sim, cinco é maior que um.")
} else {
    print("Não entraremos aqui com essa condição.")
}


if descricaoTempo == "Ensolarado"{
    print("Sim, o tempo esta ensolarado.")
} else {
    print("Não, hoje o dia esta chuvoso.")
}

let pi: Double = 3.14
var numero : Double = 3

if numero < pi {
    print("Este numero é menos que pi")
} else {
    print("Este numero e igual ou maior que pi")
}

/**
 IF, ELSE IF & ELSE
 */

var idade: Int = 16
if idade >= 16 {
    if idade > 18 {
        print("Acesso permitido")
    } else {
        print("Acesso permitido com responsavel")
    }
} else {
    print("Acesso negado")
}

var temp = 13
if temp <= 12 {
    print("Esta muito frio")
} else {
    print("Deu praia")
}

temp = 13
if temp <= 12 {
    print("Esta muito frio")
} else {
    print("Deu praia")
}

if temp <= 12 {
    print("Esta muito frio")
} else if temp <= 20 {
    print("Bora pegar um casaco")
} else {
    print("Deu praia")
}

if idade < 3 {
    print("bebe")
}else if idade <= 10 {
    print("crianca")
}else if idade <= 17 {
    print("adolescente")
}else{
    print("adulto")
}

/**
 SWITCH
 
 O switch é uma forma de não entrarmos em grandes estruturas de if encadeadas e complexas. Ou seja, a lógica é a mesma do if, diante de uma condição faça algo, mas o que o diferencia e possibilita que seja menos complexo? Vamos a sintaxe e alguns exemplos:
 
💡 Podemos adicionar quantos cases forem necessários!
 
 */

let num = 8
 
switch num {
case 0:
    print("Num tem o valor 0")
case 1:
    print("Num tem o valor 1")
default:
    print("Num tem outro valor diferente de 0 e 1")
}


let favoriteColor = "black"
 
switch favoriteColor {
case "blue":
    print("minha cor predileta é Azul")
case "black":
    print("minha cor predileta é Preto")
case "red":
    print("minha cor predileta é Vermelho")
default:
    print("Não temos registro pra cor informada.")
}

/**
 Então com um apenas um switch podemos verificar quantas condições quisermos para um valor informado no início dele.

 💡 Uma vez encontrado um valor correspondente ele saí da estrutura e não faz mais nenhuma verificação.
 
 */

let notaDepositada = "dez"
 
switch notaDepositada {
case "dois":
    print("Você depositou R$2,00")
case "cinco":
    print("Você depositou R$5,00")
case "dez":
    print("Você depositou R$10,00")
case "vinte":
    print("Você depositou R$20,00")
case "cinquenta":
    print("Você depositou R$50,00")
case "cem":
    print("Você depositou R$100,00")
default:
    print("Não existe nota esse valor em nota de reais.")
}

/**
 Vamos aprender novos operadores? Vamos ver no próximo exemplo operadores de intervalo!
 */

let reais = 10
 
switch reais {
case 0..<5:
    print("O preço está entre 0 e 4 reais.")
case 5...10:
    print("O preço está entre 5 reais e 10 reais.")
default:
    print("O preço é maior que 10 reais.")
}

let percentagem = 10
 
switch percentagem {
case 0:
    print("Insatisfatório, não acertou nenhuma questão.")
case 1...20:
    print("Insatisfatório, vamos estudar mais?")
case 21..<50:
    print("Insatisfatório, não acertou nenhuma questão.")
case 50..<70:
    print("Foi por pouco, vamos estudar mais!")
case 70..<90:
    print("Satisfatório, você foi aprovado!")
default:
    print("Excelente, desempenho memorável!")
}


