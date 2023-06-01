//: [Previous](@previous)

import Foundation

/**
 OPTIONAL
 
Sao tipos especiais de variaveis que podem receber valores nulos.
 Devem ser usados emsituacoes onde podemos nos abster de valores.
 */

func optionalDeclarationExample(){
    var optionalString : String?
    print(optionalString)
    print(type(of: optionalString))
    
    optionalString = "Texto"
    print(optionalString)
    
    optionalString = nil
    print(optionalString)
}

optionalDeclarationExample()

/**
 Desempacotando um optional
 forced unwrapping
 operador (!)
 
 */
func unwrappingOptionalExample(){
    var optionalString: String? = "Texto"
    
    let normalString = optionalString!
    print(normalString)
    print(type(of: normalString))
}

unwrappingOptionalExample()

/**
 Cilada  do desempacotamento forçado
 
 É preciso garantir que se tenha um valor dentro, nao se pode desempacotar um valor nulo.
 
 */

func unwrappingOptionalPitfall(){
    var optionalInt: Int? = nil
    let normalInt = optionalInt!
    print(optionalInt)
}
//unwrappingOptionalPitfall()

/**
 Estratégias de desempacotamento de opcionais
 
 */

// Checagem de valor nulo

func checkingOptionalExample(value : String?){
    if value != nil {
        let stringValue = value!
        print("O valor colocado foi \(stringValue)")
    } else {
        print("Nao houve valor colocado")
    }
}
checkingOptionalExample(value : "teste")
checkingOptionalExample(value : nil)
checkingOptionalExample(value : "")

/** Optional Binding

 Estruturas especiais para desempacotamento de optionals
*/

// IF/ LET

func optionalBindingIfLet(value: String?){
    if let stringValue = value {
        // o valor stringValue é um valor desempacotado que pode ser usado nesta parte do bloco
        print("O valor colocado foi \(stringValue)")
    }else {
        print("Nao houve valor colocado")
    }
}

optionalBindingIfLet(value : "teste")
optionalBindingIfLet(value : nil)
optionalBindingIfLet(value : "")


func optionalBindingIfLet(value: String?, otherValue: Int?){
    if let stringValue = value, let intValue = otherValue {
        // o valor stringValue é um valor desempacotado que pode ser usado nesta parte do bloco
        print("O valor colocado foi \(stringValue) e \(intValue)")
    }else {
        print("Um dos valores nao foi atribuido")
    }
}

optionalBindingIfLet(value : "teste", otherValue: 10)
optionalBindingIfLet(value : "teste", otherValue: nil)
//optionalBindingIfLet(value : "teste", otherValue: )
optionalBindingIfLet(value : nil, otherValue: 10)
optionalBindingIfLet(value : nil, otherValue: nil)
//optionalBindingIfLet(value : nil, otherValue: )
optionalBindingIfLet(value : "", otherValue: 10)
optionalBindingIfLet(value : "", otherValue: nil)
//optionalBindingIfLet(value : "", otherValue: )

// GUARD LET
// nos dah o valor desempacotado do lado de fora, porem se ele nao funcionar somos obrigados a abandonar a funcao

func optionalBindingGuardLet(value: String?, otherValue: Int?){
    guard let stringValue = value, let intValue = otherValue else { print("Um dos valores nao foi atribuido")
        // Guard Let, quando executar o bloco else nos forca a abandonar a funcao
        return
    }
    // Os valores desempacotados por guard/let ficam acessiveis do lado de fora do bloco
    print("O valor colocado foi \(stringValue) e \(intValue)")
}

optionalBindingGuardLet(value : "testando guard let", otherValue: 30)
optionalBindingGuardLet(value : "testando guard let", otherValue: nil)
//optionalBindingGuardLet(value : "testando guard let", otherValue: )
optionalBindingGuardLet(value : nil, otherValue: 30)
optionalBindingGuardLet(value : nil, otherValue: nil)
//optionalBindingGuardLet(value : nil, otherValue: )
optionalBindingGuardLet(value : "", otherValue: 30)
optionalBindingGuardLet(value : "", otherValue: nil)
//optionalBindingGuardLet(value : "", otherValue: )


// Coalescing operator - ??

func coalescingOperatorExampleValue(value: String?, otherValue: Int?){
    let stringValue = value ?? "Sem texto para usar o coalescingOperator"
    let intValue = otherValue ?? 5000
    
    print("Os valores colocados foram \(stringValue) e \(intValue)")
}

coalescingOperatorExampleValue(value : "testando Coalescing operator", otherValue: 700)
coalescingOperatorExampleValue(value : "testando Coalescing operator", otherValue: nil)
//coalescingOperatorExampleValue(value : "testando Coalescing operator", otherValue: )
coalescingOperatorExampleValue(value : nil, otherValue: 700)
coalescingOperatorExampleValue(value : nil, otherValue: nil)
//coalescingOperatorExampleValue(value : nil, otherValue: )
coalescingOperatorExampleValue(value : "", otherValue: 700)
coalescingOperatorExampleValue(value : "", otherValue: nil)
//coalescingOperatorExampleValue(value : "", otherValue: )

/**Exemplos
 
 Funcao que devolve o menor numero par de um array
 **/

func lesserEvenNumber(in values: [Int]) -> Int? {
    var result: Int?
    
    for value in values where value % 2 == 0 {
        if let resultValue = result {
            if resultValue > value {
                result = value
            }
        } else {
            result = value
        }
    }
    return result
}

var lesserNumber = lesserEvenNumber(in: [4, 1, 3, 5, -8])
print(lesserNumber)

lesserNumber = lesserEvenNumber(in: [1, 3, 5, 7, 9])
print(lesserNumber)

