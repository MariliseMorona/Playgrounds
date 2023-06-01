//: [Previous](@previous)

import Foundation

/**
 Protocolos
 
 Esquemas que definem metodos e propriedades que alguma coisa deve ter.
 Nos podemos dizer ao swift quais tipos usarão o protocolo.
 Isso é chamado de adotar ou conformar com o protocolo.
 
 Classe, struct ou enum podem entrar em conformidade com o protocolo.
 
 Dizemos que a classe esta em conformidade com o protocolo, ou esta adotando o protocolo.
 
 É parecido com heranca, porem nao é herança porque não é uma classe.
 */

//Declaracao de protocolo

protocol Calculatable {
    func calculate() -> Int
    
}

//Conformando nosso protocol
struct SumOperation: Calculatable {
    let v1: Int
    let v2: Int
    
    func calculate() -> Int {
        return v1 + v2
    }
}

struct Sumatory: Calculatable{
    var values: [Int] = []
    
    func calculate() -> Int {
        return values.reduce(0) { $0 + $1 }
    }
}

func testCalculateProtocol() {
    print("======= TestSum Operation =======")
    let sumOperation = SumOperation(v1: 10, v2: 20)
    print(sumOperation.calculate())
    
    print("======= TestSum Sumatory =======")
    let sumatory = Sumatory(values:[10, 20, 30, 40, 50])
    print(sumatory.calculate())
}

testCalculateProtocol()

/**
 Utilizando protocols como propriedades

 Como propriedade podemos definir se ela sera apenas leitura ou nao
 As propriedades podem ser apenas GET, ou GET e SET
 Nao existe apenas SET em swift
 */

protocol Taggable{
    var tag: String { get set }
    var description: String { get }
}

struct Product: Taggable{
    var tag: String
    var name: String
    var price: String
    var description: String{
        // atributo computado/ processado
        
        return "" + "Product: \(name)\n" +
        "Price: \(price)\n" +
        "Tag: \(tag)"
    }
}

func testTaggableProtocol(){
    print("===== Teste protocol como propriedade =====")
    let product = Product(tag: "12345", name: "Arroz", price: "R$ 12,00")
    print()

}

testTaggableProtocol()


/**
 Utilizando protocols como tipo
 
 */

struct Character: Taggable{
    var name : String
    var type: String
    var tag: String
    var description: String
}

func testTypeProtocol(){
    print("===== Teste protocol como tipo =====")
    var taggable: Taggable = Product(tag: "54321", name: "Feijao", price: "R$ 15,00")
    
    taggable.tag = UUID().uuidString
    print(taggable.description)
    taggable = Character(name: "Xavier", type: "Human", tag: "Mutant", description: "Professor doidao com altos poder da mente")
}

testTypeProtocol()

/**
 Limitando protocolos para serem usados em classes
 
 Usado quando precisamos que o protocol trabalhe apenas com referencias, por exemplo: delegate
 */

//Legado
protocol ClassOnlyOldStyle: class{
    func doSometrhing()
}

protocol ClassOnly: AnyObject{
    func doSomething()
}
// o tipo nao classe (struct) nao aceita a implementacao
struct AnyStruct: ClassOnly{
    
}

class MyClass: ClassOnly{
    func doSomething() {
        <#code#>
    }
}

enum MyEnum: ClassOnly{
    func doSomething() {
        <#code#>
    }
}

/**
 Colocando multiplos protocolos
 */

struct Vehicle: Taggable, Calculatable{
    var tag: String
    
    var description: String
    
    func calculate() -> Int {
        <#code#>
    }
    
    
}
