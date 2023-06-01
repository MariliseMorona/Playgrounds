
import UIKit

/**Herança
 
 É a capacidade de criar novos modelos baseados em modelos já existentes.
 Com isto não precisamos reescrever codigos ou refazer logicas ja criadas na classe em qual nos baseamos.
 A classe que herda é chamada filha ou sub-classe.
 A classe que herda de é chamada de pai ou super classe.**/

//Super classe
class Creature {
    var type: String
    private var origin: String = "cristurolandia"
    
    var description: String {
        return "Simplesmente um(a) \(type) de \(origin)"
    }
    init(type: String){
        self.type = type
    }
}

func createCreature(){
    print("==== Criando criatura ====")
    
    let goblin = Creature(type: "Goblin")
    print(goblin.description)
}
createCreature()

//Classes filhas

class Adventurer : Creature {
    var attackPoints: Int
    var deffensePoints: Int
    var healthPoints: Int
    
    var isAlive: Bool {
        return healthPoints > 0
    }
    
    init(attack: Int, deffense: Int){
        self.attackPoints = attack
        self.deffensePoints = deffense
        healthPoints = 30
        super.init(type: "Aventureiro")
    }
    func attack()-> Int{
        return attackPoints
    }
    func defense(damage: Int){
        self.healthPoints -= damage
    }
}
func createAdventurer(){
    print("==== Criando aventureiro ====")
    
    //let adventure = Adventurer(type: "Aventureiro")
    let adventure = Adventurer(attack: 10, deffense: 0)
    print(adventure.description)
    print(adventure.attack())
}
createAdventurer()
