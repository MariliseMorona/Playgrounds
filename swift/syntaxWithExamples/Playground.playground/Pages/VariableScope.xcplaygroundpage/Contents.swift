import Foundation

// Escopo de variaveis e constantes

/**
 
 É o alcance da visibilidade de uma variavel
 Determina qual parte da aplicação pode utilizar ou ver determinada variavel
 
 */


var value = 30      // escopo global

/**
 
 Utilizando o escopo DO
 
 Representa um bloco de código fechado
 Tudo o que for declarado dentro do bloco DO será visivel apenas nele
 
 */

do{
    
    var localValue = 10
    
    print(localValue)
    print(value)
    
    value -= 10
    
}
print(value)
// print(localValue)        nao en encontrada no escoo global, por ser de ensopo local, quando chega ao fim o bloco toda variavel criada nele sera desalocada

do{
    print("--- Inicio bloco A === ")
    var localValue = 40
    print(localValue)
    
    
    do{
        print("--- Inicio bloco B === ")
        var localValue = 70
        print(localValue)
        localValue *= 2
        print(localValue)
        print("--- Fim bloco B === ")
    }
    print(localValue)
    print("--- Fim bloco A === ")
}


var myVariables = 42
myVariables = 50
let myConstant = 42
//myConstant = 30

let implicitInteger = 70
let implicitDouble = 70.0
let explicitInteger: Int = 30
let explicitFloat: Float = 4

let label = "This width is "
let width = 94

/** CONCATENAÇÃO **/
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
/** INTERPOLAÇÃO */
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruits."

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit"
"""

var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
]
occupations["Jayne"] = "Public Relations"

let emptyArray : [String] = []
let emptyDictionary : [String: Float] = [:]





/**
 Transformar String em Int
 */

let myString = "2022"

let myInt1 = Int(myString)
let myInt2 = Int(myString) ?? 0
let myInt3 = (myString as NSString).integerValue

/**
 Transformar String em Double
 */

let myString2 = "12.22"

let myDouble1 = Double(myString2)
let myDouble2 = (myString2 as NSString).doubleValue

let new = String(format: "%.1f", myDouble2)
/**
 Transformar Double em String
 */

let myDouble3 = 15.4

let myString3 = String(myDouble3)
