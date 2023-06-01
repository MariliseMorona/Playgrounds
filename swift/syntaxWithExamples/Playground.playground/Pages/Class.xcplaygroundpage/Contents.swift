//: [Previous](@previous)

import Foundation

/**
 CLASSES
 
 Sao blocos de construcao flexiveis para criacao de partes de programas.
 Com classes conseguimos criar tipos proprios, personalizados e reaproveitaveis.
 
 */
// Declarando uma classe
class Hero {
    
    // Podemos colocar as propriedades e metodos
    
}

// Quando a gnt cria uma variavel que depende de uma classe, estamos intanciando essa classe e ela vira um objeto

func createHero(){
    //Explicito
    let warrion: Hero = Hero()
    //Inferencia
    let paladin = Hero()
}

createHero()


/**
 PROPRIEDADES
 Sao variaveis ou constantes que criamos, serve para guardar informacoes da classe.
 Geralmente colocamos propriedades como sendo obstantivos ou adjetivos.
 
 ESTADO
 Um conjunto de propriedades referente a uma classe dispostas em uma determinada configuracao.
 
 A classe é o molde, e o objeto guarda o estado ou as informacoes.
 */


class Enemy{
    var name: String = ""
    var type: String = ""
    var attackPoints: Int = 0
    var defensePoints: Int = 0
    var healthPoints: Int = 0
}

func createEnemy(){
    let goblin = Enemy()
    
    goblin.name = "Grobto"
    goblin.type = "Goblin"
    goblin.attackPoints = 10
    goblin.defensePoints = 5
    goblin.healthPoints = 30
    
    dump(goblin)
}
createEnemy()

/**
 METODOS
 
 Sao funcoes que dentro de uma classe representam acoes que estas disponibilizam para que o mundo externo possa interagir e manipular as classes de forma segura.
 */

class Light {
    
    var isOn: Bool = false
    
    func turnOn(){
        isOn = true
        
//        self indica que é uma propriedade dela mesma, ou seja da mesma classe
//        self.isOn = true
    }
    func turnOff(){
        self.isOn = false
        print("Lampada foi desligada")
    }
        
    func toggle(){
//        self.isOn.toogle()
        if isOn {
            self.turnOff()
            return
        }
        self.turnOn()
    }
}

func createLight(){
    let light = Light()
    
    print("Lampada status: \(light.isOn)")
   
    light.turnOn()
    print("Lampada status: \(light.isOn)")
    
    light.turnOff()
    print("Lampada status: \(light.isOn)")
    
    print("-----> <------")
    
    light.toggle()
    print("Lampada status: \(light.isOn)")
    
    light.toggle()
    print("Lampada status: \(light.isOn)")
}
createLight()

// ------------------------------------------

class DarkKnight {
    
    //Propriedades
    var name: String = ""
    var type: String = "Dark Night"
    var attackPoints: Int = 0
    var defensePoints: Int = 0
    var healthPoints: Int = 0
    
    //Metodos
    
    func attack() -> Int {
        let minPoints = attackPoints > 1 ? attackPoints / 2 : 1
        let maxPoints = attackPoints > 1 ? attackPoints : 1
        
        return Int.random(in: minPoints...maxPoints)
    }
    
    func defend(damage: Int) {
        let defense = defensePoints > 1 ? defensePoints :  1
        let damageDone = damage - Int.random(in: 1...defense)
        self.healthPoints -= damageDone
    }
    
    func isAlive() -> Bool {
        return healthPoints > 0
    }
}

func showScore(knights: [DarkKnight]) {
    print("============ Pontos de vida =============")
    
    for knight in knights {
        let status = knight.isAlive() ? "Vivo" : "Morto"
        print("\(knight.name) - \(knight.healthPoints) de vida. \n Esta \(status)")
    }
    print()
}

func createDarkKnights() {
    let zod = DarkKnight()
    zod.name = "Zod"
    zod.attackPoints = 100
    zod.defensePoints = 100
    zod.healthPoints = 50

    let knightLord = DarkKnight()
    knightLord.name = "Knight Lord"
    knightLord.attackPoints = 300
    knightLord.defensePoints = 150
    knightLord.healthPoints = 100

// Efetuando os ataques
    
    showScore(knights: [zod, knightLord])
    zod.defend(damage: knightLord.attack())
    showScore(knights: [zod, knightLord])
    
}
 createDarkKnights()
