//: [Previous](@previous)

import Foundation
import CoreGraphics

/**
 INICIALIZADORES
 
 Sao metodos especiais que sao chamados no momento da instanciacao de um objeto.
 Usamos o metodo reservado init para criar um inicializador ou construtor.
 Dentro dele nos devemos colocar todo o comportamento que queremos que ocorra no momento da instaciacao.
 
 */


class Hero {
    
    let name: String
    let level: Int
    let attackPower: Int
    
    init(){
        name = "Hero"
        level = 10
        attackPower = 20
        
        print("Hero foi inicializado")
    }
    
    init(name: String, level: Int){
//esse self indica o name da classe, que recebe o name do inicializador
        // dessa forma, e apenas dessa por meio de um inicializador, eu consigo mudar o valor a ser atribuido em um LET
        self.name = name
        self.level = level
        
        let powerFactor = 1.7
        self.attackPower = Int(powerFactor * Double(level))
        
        print("Heroi \(name) foi incializado pelo segundo metodo")
    
    }
}

func createHero(){
    print("==== Criando um Heroi ====")
    let hero = Hero()
    dump(hero)

//    essa segunda inicializacao ocorreu por meio de sobrecarga de metodo
    let arthur = Hero(name: "Arthur", level: 100)
    dump(arthur)
    print()
}
createHero()

//outras formas de inicialiadores

let number = 10
let newNumber  = Int(10)
let numberString = String(number)
let repeating = String(repeating: "ABC/", count: 5)
print(repeating)


