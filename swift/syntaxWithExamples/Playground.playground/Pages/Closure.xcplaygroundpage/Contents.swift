//: [Previous](@previous)

import Foundation

/**
 CLOSURE ou CALLBACKS
 
 Sao um tipo especial de funcao.
 Sao blocos auto-contidos que podem ser reaproveitados.
 Resumindo, closures sao como variaveis que guardam codigos.
 Sao como funcoes alocadas em variaveis.
 
 Bloco de funcionalidade onde se pode passar ele por argumento na funcoa ou armazenar propriedade do objeto.
 
 Podem ser utilizadas como funcoes de ordem superior (classificar ou filtrar uma lista), ou ainda, como manipuladores de conclusao para chamar de volta ao final de uma longa tarefa.
 
 Toda funcao é uma closure, mas nem toda closure é uma funcao.
 */

//Criando uma closure

// in => marca o fim do parametro e retorno do tipo
let myNameClosure = {
    (name: String) -> Void in
        print("Ola meu nome é \(name)")
}


myNameClosure("Mari")
// print(uma assinatura de string que retorna nada )
print(type(of: myNameClosure))


let sumNumbers = { (val1: Int, val2: Int) -> Int in
    return val1 + val2
}
// print(uma assinatura de int que retorna o valor da soma )
print(sumNumbers(22, 32))
print(type(of: sumNumbers))

/**
 
Passando closures como parametro

 */

// typealias :  é como um apelido, pode ser atribuido para qualquer tipo, alem de ser uma boa pratica
typealias ClosureString = (String) -> String
// Assinaturas de closure
 // Esse
func mapText(_ text: String, transform: ClosureString) -> String {
    return transform(text)
}
// Ao inves desse
func mapText2(_ text: String, transform: (String) -> String) -> String {
    return ""
}

//aqui estou criando a closure propriamente dita
func textMapText(){
    let mapResult = mapText("Texto", transform: { value in
        return "===== \(value.uppercased()) ====="
        
})
    print(mapResult)

let repeatTwice = mapText("Novo texto", transform: { value in
        return value + "==" + value

})
    print(repeatTwice)
}
textMapText()

/**
 Closure trailing
 
 Caso o ultimo parametro de uma funcao seja uma closure, este pode ser omitido e substituido por um bloco de codigo
 */
func testClosureTrailing(){
    let starredText = mapText("Texto esrtelado nos espacos"){ value in
        return value.replacingOccurrences(of: "", with: "✰")
    }
    print(starredText)
}
testClosureTrailing()

/**
 Daily Closure
  map e filter sáo funcoe de ordem alta
 */

func dailyCloruse(){
    let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    let double = array.map { number in
        return number * 2
        
    }
    print(double)
    
    
    let oddNumbers = array.filter { number in
        return number * 2 == 0
    
    }
    print(oddNumbers)
}
dailyCloruse()

/**
 Remontando algoritmos
 
 map : aplica transformacoes
 
 */
func map(_ elements: [Int], transform: (Int) -> Int) -> [Int] {
    var result = [Int]()
    
    for element in elements {
    result.append(transform(element))
    }
    return result
}

func testClosureMap(){
    let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    let result = map(array) { number in
        return number * 10
    }
    print(result)
}

testClosureMap()


/**
 Remontando algoritmos
 
 filter : aplica filtro
 
 */

func filter(_ elements: [Int], isValid condition: (Int) -> Bool) -> [Int] {
    var result = [Int]()
    
    for element in elements where condition(element){
        result.append(element)
    }
    return result
}

func testClosureFilter(){
    let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    let filteredNumbers = filter(array) { number in
        return number % 3 == 0
    }
    print(filteredNumbers)
}

testClosureFilter()


// Ainda sobre Filter, Map e FlatMap

// O filtro nos permite remover quaisquer elementos que não se enquadrem em um determinado requisito, neste caso, aqueles que não começam com um caractere de hash à esquerda:
func hashtags(in string: String) -> [String] {
    let words = string.components(
        separatedBy: .whitespacesAndNewlines
    )
    return words.filter { $0.starts(with: "#") }
}
let tags = hashtags(in: "#Swift by Sundell #Basics")
print(tags) // ["#Swift", "#Basics"]

//Agora digamos que queremos normalizar as hashtags que nossa função produz, para que fiquem sempre em minúsculas. Uma maneira de fazer isso seria criar uma nova matriz, usar um loop for para iterar sobre todas as tags e inserir uma versão em minúscula de cada tag nessa nova matriz:
var lowercasedTags = [String]()
for tag in tags {
    lowercasedTags.append(tag.lowercased())
}
print(lowercasedTags)
// Usando closures

//No entanto, o que fizemos essencialmente acima foi escrever uma implementação manual de map — que quando chamada em uma sequência de valores (como Array), nos permite aplicar uma transformação baseada em closures a cada elemento para produzir uma nova matriz — então vamos usar isso em vez disso:
func hashtags2(in string: String) -> [String] {
    let words = string.components(
        separatedBy: .whitespacesAndNewlines
    )

    let tags2 = words.filter { $0.starts(with: "#") }
    
//    Usando 'map' podemos converter uma sequência de valores em um novo array de valores, usando um closure como uma transformação:
    return tags2.map { $0.lowercased() }
}

let strings = [
    "I'm excited about #SwiftUI",
    "#Combine looks cool too",
    "This year's #WWDC was amazing"
]

//let tags2 = strings.map { hashtags2(in: $0) }
//print(tags2)

let tags2 = strings.map(hashtags2)
print(tags2)

//Muito legal! No entanto, a saída que estamos obtendo acima é uma matriz contendo matrizes de cadeias de caracteres (ou [[String]]), o que provavelmente não é o que queremos. Provavelmente queremos uma matriz "plana" que contenha apenas hashtags, sem as matrizes aninhadas (ou [String]).
//É aqui que entra flatMap. Funciona exatamente como o mapa, mas também achata a "matriz de matrizes" resultante em apenas uma única matriz - assim:

let tags3 = strings.flatMap(hashtags2)
print(tags3)

//Assim, map transforma uma matriz de valores em uma matriz de outros valores, e flatMap faz a mesma coisa, mas também nivela o resultado de coleções aninhadas em apenas uma única matriz.
//Finalmente, há compactMap, que nos permite descartar quaisquer valores nulos que nossa transformação possa produzir. Por exemplo, digamos que temos uma matriz de strings que podem conter números e que queremos converter todos esses números em valores Int adequados. Essa é uma operação que pode falhar (e, portanto, produzir nil), então usaremos compactMap para realizar essa transformação, fornecendo apenas os inteiros válidos que estávamos procurando:
let numbers = ["42", "19", "notANumber"]
let ints = numbers.compactMap { Int($0) }
print(ints) // [42, 19]

let ints2 = numbers.compactMap(Int.init)
print(ints2)

// Podemos usar as funções de mapeamento acima em opcionais, por exemplo, para converter uma String opcional em um Int opcional — novamente usando o mesmo inicializador Int que usamos antes:

func convertToInt(_ string: String?) -> Int? {
    return string.flatMap(Int.init)
}
//Também poderíamos usar o mapa simples, que exige que produzamos um valor não opcional, por exemplo, usando um padrão:
func convertToInt2(_ string: String?) -> Int? {
    return string.map { Int($0) ?? 0 }
}

enum Result<Value> {
    case value(Value)
    case error(Error)
}

class Promise<Value> {
    private var result: Result<Value>?
    
    init(value: Value? = nil) {
        result = value.map(Result.value)
    }
}

let stringArray = ["car", "bike", "boat"]
let characterArray = stringArray.flatMap { $0 }
print(characterArray)
let stringArray2 = characterArray.map { String($0) }
print(stringArray2)
let string = stringArray2.joined(separator: ", ")
print(string)


let stringArray4 = ["camaro amarelo", "camaro verde", "boat"]
let characterArray4 = stringArray4.flatMap { _ in "camaro" }
print(characterArray4)
let stringArray5 = characterArray4.map { _ in "camaro" }
print(stringArray5)
let string2 = stringArray4.joined(separator: ", ")
print(string2)
let string6 = stringArray4.filter { _ in "camaro"
    return true
}
print(string6)

struct Person {
    var name: String
    var age: Int
}

let myName = "João"

let people: [Person] = [Person(name: "João", age: 21), Person(name: "Bia", age: 34), Person(name: "Alice", age: 8)]

for person in people {
    if person.name == "João"{
        print(person)
    }
}

// retorna o primeiro elemento da coleção que satisfaz a condição
let me = people.first(where: {
    $0.name == myName
})
print(me ?? "Não estou no array")

// retorna se a coleção possui alguem com idade maior que 18
let hasAdult = people.contains(where: {
    $0.age >= 18
})
print(hasAdult)

//retorna uma nova coleção com os elementos da coleção inicial que satisfazem a condição
let adults = people.filter({
    $0.age >= 18
})
print(adults)

let newGroupAdults = people.filter({ person in
    return person.age > 18
})
print(newGroupAdults)


//  Closure possui dois atributos: escaping e nonescaping
/**
 @nonescaping
 quando vc recebe o callback e executa ele dentro do contexto,.

 @escaping
 Quando o fechamento é passado como um argumento para a funcao, mas é chamada após o retorno da funcao, ou seja ela é assincrona.
 O callback é retido na inscatncia, náo é necessariamente um strong, ele segura a sessao ate terminar o bloco.
 

 Voce pode armazenar o fechamento em uma variavel fora da funcao.
 Por exemplo: funcoes que iniciam uma operacao assincrona adotam um argumento de fechamento como manipulador de conclusao. A funcao retorna apos o inicio da operacao, mas o fechamento não é chamado ate que a operacao seja concluida.
 
 */

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

class Service {
    
    private let action: (String) -> Void
    
    init(action: @escaping (String) -> Void){
        self.action = action
    }
    
    
    func retornandoNoMesmoBloco(callback: () -> Void) {
        for i in 0...50 {
            print("i = \(i) sincrono")
        }
        callback()
    }
    
    func retornandoDepoisDoBloco(callback: @escaping() -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            for i in 0...50 {
                print(i)
            }
            callback()
        }
    }
    
    func retornandoDepoisDoBlocoDeNovo(callback: @escaping() -> Void) {
        for i in 0...50 {
            print("i = \(i)")
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            callback()
        }
    }
    
    func retornandoDepoisDoBlocoDeNovoComParametro(callback: @escaping(Int) -> Void) {
        for i in 0...50 {
            print("i = \(i) com parametro")
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            callback(1000)
        }
    }
}

let service = Service() {
    index in
    print("ation esta rodando com o index \(index)")
}

func executaSucesso(_ value: Int) {
    print("deu sucesso")
}

service.retornandoNoMesmoBloco {
    print("sucesso no sincrono")
}

service.retornandoDepoisDoBloco {
    print("sucesso")
}

service.retornandoDepoisDoBlocoDeNovo {
    print("sucesso tbm")
}

service.retornandoDepoisDoBlocoDeNovoComParametro(callback: executaSucesso(_:))

