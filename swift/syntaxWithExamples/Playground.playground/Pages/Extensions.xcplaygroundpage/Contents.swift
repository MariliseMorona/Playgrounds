//: [Previous](@previous)

import Foundation

/**
 Extensions
 
 Permitem adiconar novas funcionalidades a uma classe, estrutura, enumeracao ou protocolos ja existentes.
 So funcionam apra adicionar novas funcionalidades logo o elemento a ser estendido precisa ja existir.
Nao eh necessario ter acesso as propriedades do elemento para criar uma extension
 
 Nao podemos criar stores properties ( )
 
 Podemos criar propriedades processadas, computed properties ( propriedades somente leitura ) e metodos.
 */


extension Int {
    
    var cubed: Int {
        return self * self * self
    }
    
    var factorial: Int {
        if self <= 1 {
            return 1
        }
        var value = 1
        for n in 1...self {
            value *= n
        }
        return value
    }
}

func testExtensionInt(){
    print("===== Testando extensions ======")

    let value = 3
    
    print("O cubo de \(value) é \(value.cubed)")
    print("O fatorial de \(value) é \(value.factorial)")

}
testExtensionInt()


extension String {
    func trimeLeft(value: Int) -> String{
        return String(self.dropFirst(value))
    }
    
    func trimeRight(value: Int) -> String{
        return String(self.dropLast(value))
    }
    
    var countVowels: Int{
        let characters = "aeiouAEIOU"
        var count = 0
        
        for character in self where characters.contains(character){
            count += 1
        }
        return count
    }
}

func testExtensionString(){
    print("===== Testando extensions ======")

    let text = "Este é um texto de teste"
    
    print(text.trimeLeft(value: 5))
    print(text.trimeRight(value: 5))
    print(text.trimeLeft(value: 5).trimeRight(value: 5))
    print("A frase \"\(text)\" possui \(text.countVowels) vogais.")
}
testExtensionString()

enum Direction {
    case north
    case south
    case east
    case west
}

extension Direction{
    var description: String {
        switch self {
        case .north:
            return "Direcao norte"
        case .south:
            return "Direcao sul"
        case .east:
            return "Direcao leste"
        case .west:
            return "Direcao oeste"
        }
    }
}

func testExtensionEnumDirection(){
    print("===== Testando extensions ======")
    print(Direction.east.description)
}

testExtensionEnumDirection()
