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
    print("==== Criando aventureito ====")
    
    //let adventure = Adventurer(type: "Aventureiro")
    let adventure = Adventurer(attack: 10, deffense: 0)
    print(adventure.description)
}
createAdventurer()


/**Polimorfismo
 
 É  a capacidade de transcrever o comportamento de um metodo ja existente
 na classe pai**/

class Warrior: Adventurer {
    
    
    override var description: String{
        return "Guerreiros são extremamentes fortes"
    }
    
    init() {
        super.init(attack: 150, deffense: 100)
        self.type = "Guerreiro"
    
    //usamos a palavra reservada overide antes do metodo quando queremos sobrescrever o comportamento"
    }
    
        override func attack() -> Int{
            let factor = Int.random(in: 0...50)
            let damage = factor + attackPoints
            return damage
        }
    
    override func defense(damage: Int) {
        let factor = Int.random(in: 0...deffensePoints)
        let damageTaken = damage - (factor + deffensePoints)
        self.healthPoints -= max(0, damageTaken)
    }
    
}

class Paladin: Adventurer{
    
    override var description: String {
        let result = super.description
        return result + "\n" +
        "Paladinos são guerreiros da justiça, e lutam para defender os mais fracos."
        
    }
    
    init() {
        // super init, onde a gnt chama o init da super classe pra poder aplicar suas propriedades
        super.init(attack: 20, deffense: 30)
        self.type = "Paladino"
    }
    
    func healthSelf(){
        let curePoints = Int.random(in: 0...deffensePoints)/10
        self.healthPoints += curePoints
    }
    
    override func attack() -> Int {
        let factor = Int.random(in: 0...attackPoints)
        return factor
    }
    override func defense(damage: Int) {
        let factor = Int.random(in: 0...deffensePoints)
        let damageTaken = damage - (factor + deffensePoints)
        self.healthSelf()
        self.healthPoints += max(0, damageTaken)
    }
}


func createFighters(){
    print("==== Criando um guerreiro ====")
    let warrior = Warrior()
    print(warrior.description)
}
createFighters()


func createPaladin(){
    print("==== Criando um guerreiro paladino ====")
    let paladin = Paladin()
    print(paladin.description)
}
createPaladin()
