//: [Previous](@previous)

import Foundation
import Darwin

/**
 STRUCT
 
 Sao blocos de construcao flexiveis para criacao de partes de programas.
 Com estruturas conseguimos criar tipos proprios, personalizados e resproveitaveis.


 */


/**
 Pontos chaves entre struct e class:
 
 1. Ambos servem para criacao de modelos e podem ter metodos, inicializadores e propriedades
 */

class Mage {
    //Propriedades
    let name: String
    var level: Int = 10
    
    //Inicializadores
    init(name: String){
        self.name = name
        
    }
    //Metodos
    func attack() -> Int{
        return 10
    }
}

struct Warlock {
    //Propriedades
    let name: String
    var level: Int = 10
    
    //Inicializadores
    init(name: String){
        self.name = name
        
    }
    //Metodos
    func attack() -> Int{
        return 10
    }
}

/**
 2. Structs nao suportam heranca
 
 */
class DarkMage: Mage {}
print("-----")
//struct DemonLord: Mage {}
print("-----")

/**
 3. Struct nao suporta polimorfismo
 
 */

/**
 4. Struct nao é gerenciado pelo ARC (gerenciador de memoria)
 
 */

/**
 5. Metodos de struct nao podem alterar propriedades da mesma.
 Para isso preicsa ter o modificador mutating.
 */

struct Point {
    var x: Int = 0
    var y: Int = 0
    
    mutating func moveTo(x: Int, y: Int){
        self.x = x
        self.y = y
    }
}
var point = Point(x: 10, y: 10)
point.moveTo(x: 20, y:20)

/**
 6. Struct sao passadaos por copia
 
 */
func copyStructures(){
    print("-------- copia estruturas ---------")
   
    var warlock = Warlock(name: "Lock")
    print("Warlock original: \(warlock.level)")
    
    var warlockCopy = warlock
    print("Warlock copia: \(warlockCopy.level)")
    
    //Alterando o valor da copia
    
    warlockCopy.level = 300
    print("Warlock original: \(warlock.level)")
    print("Warlock copia: \(warlockCopy.level)")
    
    //Alterando o valor da original
    
    warlock.level = 150
    print("Warlock original: \(warlock.level)")
    print("Warlock copia: \(warlockCopy.level)")
}
copyStructures()
/**
 7. Class sao passadas por referencia
 
 */

func copyClasses(){
    print("-------- copia estruturas ---------")
   
    var mage = Mage(name: "Lock")
    print("Warlock original: \(mage.level)")
    
    var mageCopy = mage
    print("Warlock copia: \(mageCopy.level)")
    
    //Alterando o valor da copia
    
    mageCopy.level = 300
    print("Warlock original: \(mage.level)")
    print("Warlock copia: \(mageCopy.level)")
    
    //Alterando o valor da original
    
    mage.level = 150
    print("Warlock original: \(mage.level)")
    print("Warlock copia: \(mageCopy.level)")
}
copyClasses()

