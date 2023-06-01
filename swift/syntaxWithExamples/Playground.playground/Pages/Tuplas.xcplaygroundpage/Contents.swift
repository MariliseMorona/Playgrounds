// Tuplas

// Composicao de elementos associados a um nome
// em comum, cercados por parenteses e separados
// por virgula, esses valores não precisam ser
// do mesmo tipo

// Linha criada por uma lista ordenada de colunas

// Criando tupla
var person = ("Ana", 41, 1.74)

// Ler dados da tupla através do indice
print(person.0)
print(person.1)
print(person.2)

// Imprimir dados da tupla
print(person)
dump(person)

// Alterando dados da tupla
person.0 = "Joel"
person.1 = 25
person.2 = 1.60

print(person)
dump(person)

// Criando tupla explicita
var person2: (String, Int, Float) = ("Marcia", 21, 1.54)

// Alterando dados da tupla
person = ("Leonardo", 34, 1.82)


// Criando tupla associativa
var country : (name: String, language: String, population: Int) = ("Brasil", "Português", 250_000_000)


// Criando tupla constante
let game : (name: String, year: Int) = ("Cyberpunk", 2020)
//game.name = "Diablo"

// Desacoplamento de tupla ou decomposição da tupla
// Podemos utilizar uma estratégia de usar uma tupla para desmembrar outra
let (gameName, gameYear) = game
print("o jogo \(gameName) foi o mais aguardado de \(gameYear)")

// Ou ainda para ignorar campos desnecessários
let (_, countryLanguage, _) = country

/**
 Tuplas
 */
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error

print("O statusCode é \(statusCode)")
print("O statusMessage é \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("O statusCode é \(statusCode)")
print("O statusCode é \(http404Error.0)")
print("O statusMessage é \(http404Error.1)")

let http200Status = (statusCode: 200, description: "Ok")
print("O statusCode é \(http200Status.statusCode)")
print("O statusMessage é \(http200Status.description)")

/**
 Optionals
 **/

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(convertedNumber)

var serverResponseCode: Int? = 404
serverResponseCode = nil

if convertedNumber != nil {
    print("convertedNumber não é nulo, seu valor é \(convertedNumber)")
}
// Force Unwrapping
if convertedNumber != nil {
    print("convertedNumber não é nulo, seu valor é \(convertedNumber!)")
}

//Optional Binding
if let actualNumber = Int(possibleNumber) {
    print("A String possibleNumber tem um valor inteiro de \(actualNumber)")
}

let myNumber = Int(possibleNumber)
if let myNumber = myNumber {
    print("Meu número é \(myNumber)")
}

// A partir do swift 5.7
if let myNumber {
    print("Meu número é \(myNumber)")
}

if let firstNumber = Int("4"), let seconderNumber = Int("42"), firstNumber < seconderNumber && seconderNumber < 100 {
    print("\(firstNumber) < \(seconderNumber) < 100")
}


// Unwrapped optional implicity
let possibleString: String? = "Uma string opcional"
let forceString: String = possibleString!
let assumedString: String! = "Uma string opcional desempacotada implicitamente"
let implicit: String = assumedString
let optionalString = assumedString

