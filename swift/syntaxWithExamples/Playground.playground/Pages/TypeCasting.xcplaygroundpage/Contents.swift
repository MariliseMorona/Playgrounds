//: [Previous](@previous)

import Foundation
import CoreGraphics

/**
 Type Casting
 
 
 Metodo fornecido pelo swift para checar o tipo de uma instancia e de tratar como um tipo diferente de super classe ou sub classe.
 Existem dois operadores para lidar com type casting. O operador is e o operador as.
 
 */

// Estrutura basica

class GameCharacter{
    var name: String
    
    init(name: String){
        self.name = name
    }
}

class Melee: GameCharacter{
    var power: Int
    
    convenience init(name: String, power: Int){
        self.power = power
        self.init(name: name)
    }
}

class Ranged: GameCharacter{
    var distance: Int
    
    convenience init(name: String, range: Int){
        self.distance = range
        self.init(name: name)
    }
}

class Fighter: Melee{
    func furyAttack(){
        print("\(name) usou o Fury Attack")
    }
}

class Assassin: Melee{
    func backStab(){
        print("\(name) usou o Back Stab")
    }
}

class Mage: Ranged{
    func fireball(){
        print("\(name) usou o Fireball")
    }
}

class Archer: Ranged{
    func longShot(){
        print("\(name) usou o Long Shot")
    }
}

class Solder: Fighter{
    func packAttack(){
        print("\(name) usou o Pack Attack")
    }
}
    
class Warrior: Fighter{
    func tornadoAttack(){
        print("\(name) usou o Tornado Attack")
    }
}
   
class Ninja: Assassin{
    func throwShuriken(){
        print("\(name) usou o Throw Shuriken")
    }
}

class Wizard: Mage{
    func blizzard(){
        print("\(name) usou o Blizzard")
    }
}

class Hunter: Ranged{
    func tammingBest(){
        print("\(name) usou o Tamming Best")
    }
}

class Ranger: Ranged{
    func throwShuriken(){
        print("\(name) usou o Throw Shuriken")
    }
}
/**
 Operador IS
 
 Usamos o operados IS para validar o tipo de uma instancia. Caso esta instancia pertencça a uma cadeia de herança podemos checar se o tipo esta dentro da arvore de herança.
 
 Faz o check se uma instancia condia a um tipo
 */

func typeChecking(){
    let ninja = Ninja(name: "Jiraya", power: 30)
    print(ninja is Ninja)
    print(ninja is Assassin)
    print(ninja is Melee)
    print(ninja is GameCharacter)
    print(ninja is Fighter)
    
    let ragnar = Warrior(name: "Ragnar", power: 300)
    print(ragnar is Warrior)
//    print(ragnar is Soldier)
}

typeChecking()


// -----------------------------------------------

func createList() -> [GameCharacter]{
    return [
        
        Ninja(name: "Naruto", power: 10),
        Melee(name: "Melee", power: 40),
        Assassin(name: "Assassin", power: 40),
        Mage(name: "Rasputin", range: 30),
        Wizard(name: "Gandalf", range: 30),
        Fighter(name: "Bruce Lee", power: 60),
        Solder(name: "Capitao Nascimento", power: 60),
        Ranger(name: "Power Ranger", range: 100),
        Ranged(name: "Ranged Guy", range: 20),
    ]
}

func filterMelees(){
    print("======== Todos os Melees =========")
    
    let list = createList()
    var filtered: [GameCharacter] = []
    
    for item in list where item is Melee{
        filtered.append(item)
    }
    
    print(filtered)
    print()
}

filterMelees()


func filterMages(){
    print("======== Todos os Mages =========")
    
    let filtered = createList().filter { $0 is Mage }
    dump(filtered)
  
    print()
}

filterMelees()

/**
 Operador AS
 
 Usamos o operador AS para  fazer a conversao de um tipo de instancia para outro que esteja dentro da arvore de herancas. Este processo é chamado de type casting.
 Possuimos tres tipos de operadores de type casting:
    AS -> usado para comversao direta de um tipo par aoutro quando nai ha chance de falhas
    AS? -> usado para tentar fazer a conversao para o tipo esperado e em caso de falha retorna nil, porem em caso de falha retorna um valor opcional
    AS! -> como o AS, porem ja retorna o valor desempacotado. Use somente se tiver certeza do sucesso de conversao.
 */

func typeCasting(){
    let conan = Fighter(name: "Conan", power: 30)
    
    let conanMelee = conan as Melee
    dump(conanMelee)

    // nao é compativel
//    let conanSolder = conan as Solder
    let conanSolder = conan as? Solder
    
    //Mas se tiver empersonado ua super classe sendo este uma subclasse pode ser convertido de volta
    let conanOriginal = conanMelee as! Fighter
}
typeCasting()

/**
 Tipo Any
 
 Comporta qualquer tipo dentro dele
 
 */

func arrayAny() -> [Any]{
    var array: [Any] = [
    "ASDFG",
    "12345",
    123,
    3.14,
    Solder(name: "Cloud Strife", power: 30),
    Archer(name: "Legolas", range: 400),
    [1, 2, 3, 4]
    ]
    
    array.append(array)
    
    return array
}
dump(arrayAny())


func charCounter(){
    var list = createList()
    var counter = 0
    
//    for item in list where item is GameCharacter{
//        counter += 1
//    }
//    print("Contador: \(counter)")
    
    for item in list {
        if let solder = item as? Solder{
            solder.packAttack()
        }
    }
    print("Contador: \(counter)")
}
charCounter()

