//: [Previous](@previous)

import Foundation

/**
 FUNCOES
 Sao blocos de codigo associados a um nome que sera executado toda vez que for acionado (chamado)
 As funcoes sao compostas por duas etapas, a de declaracao e a de chamada/ invocacao.
 
 As funcoes em swift podem receber valores e retornar dados, serem atribuidas a variaveis, passar informacoes para funcoes e ate mesmo retornar outras funcoes.
 */


/**
 Declarando uma funcao
 */

func showMenu(){
    print("Seja bem vindo ao nosso restaurante. \n")
    print("Escolha uma opcao: ")
    print("1 - Entradas")
    print("2 - Pratos principais")
    print("3 - Sobremesas")
}

/**
 Invocar uma funcao
 */

showMenu()


func showSum(){
    let v1 = 10
    let v2 = 20
    
    print("A soma de v1 com v2 é \(v1 + v2)")
}

showSum()

/**
 Funcoes com parametros
 
 Parametros sáo constantes ou variaveis previstas na funcao para que possamos alterar o seu comportamento, ou especializar o comportamento da funcao.
 Adicionamos os parametros dentro dos parenteses da funcao.
 
 */

//Parametrizacao define a assinatura, showVisitorMenu recebe um parametro String
func showVisitorMenu(name: String){
    print("Ola \(name). Seja bem vindo(a) ao nosso restaurante. \n")
    print("Escolha uma opcao: ")
    print("1 - Entradas")
    print("2 - Pratos principais")
    print("3 - Sobremesas")
    
}

// Quando a funcao eh invocada, o parametro recebe um argumento.
// O parametro nome do tipo string da funcao showVisitorName recebe um argumento Jorge, ou Joelma
showVisitorMenu(name: "Jorge")
showVisitorMenu(name: "Joelma")


func showSumValues(a: Int, b: Int){
    let result = a + b
    print("A soma de \(a) com \(b) é \(result)")
}
//Nessas funcoes com argumento nos colocamos valores nas funcoes
showSumValues(a: 10, b: 20)
showSumValues(a: 30, b: 40)

//Nas funcoes com retorno nos tiramos valores das funcoes
/**
 Funcao com retorno
 
 Devolvem um novo valor, o retorno de uma funcao pode ser alocado em uma variavel ou constante
 */

func doubleOfSum(of values: [Int]) -> Int{
    var result = 0
    
    for value in values {
        result += value
    }
    return result * 2
}

let result01 = doubleOfSum(of: [1, 2, 3])
print(result01)

let result02 = doubleOfSum(of: [1, 3, 5])
print(result02)

func isVowel(letter: Character) -> Bool {
    switch letter {
    case "a", "e", "i", "o", "u", "A", "E", "I", "O", "U":
        return true
    default:
        return false
    }
}
print(isVowel(letter: "C"))
print(isVowel(letter: "E"))
print(isVowel(letter: "ï"))
print(isVowel(letter: "z"))

func vowels(text: String) -> String{
    var result = ""
    
    for letter in text{
        if isVowel(letter: letter){
            result += String(letter)
        }
    }
    return result
}

func consonant(text: String) -> String{
    var result = ""
    
    for letter in text{
        if isVowel(letter: letter) == false {
            result += String(letter)
        }
    }
    return result
}
let text = "Essa string tem algumas vogais."
print(vowels(text: text))
print(consonant(text: text))


// copiando funcoes
/**
 Ao usar var greetCopy = greetUser voce estara copiando a funcao para a variavel greetCopy,
 mas se voce utilizar var greetCopy = greetUser( ) voce estara atribuindo a variaver greetCopy o valor da funcao
 */

func greetUser() {
    print("Funcao a ser copiada.")
}

greetUser()

var greetCopy = greetUser
greetCopy()
// o que seria o mesmo que escrever:
// var greetCopy: () -> Void = greetUser
/**
 Void quer dizer que a funcao nao retorna nada
 */
