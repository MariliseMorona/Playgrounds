//: [Previous](@previous)

import Foundation

//O swift trabalha por valor, então ao usar o class, que é um tipo por referência, o novo valor associado é atribuido.
// Ao usar uma struct o valor não é substituído, pois é criado uma nova instância do objeto, porem ocorrerá uma recursividade

class NodeReference {
    var value: String
    
    init(value: String) {
        self.value = value
        
    }

}

var classA = NodeReference(value: "A")
var classB = classA

classB.value = "B"
print(classA.value)
