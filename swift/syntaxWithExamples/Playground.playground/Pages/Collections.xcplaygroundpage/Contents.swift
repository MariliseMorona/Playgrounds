//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/**
 Coleções primárias
 Possuem tipagem clara sobre os valores e chaves que podem armazenar.
 A tipagem pode ser mutável, se atribuída a uma variável.
 
TIPOS DE COLEÇÕES
 */

/**
 Arrays: lista ordenada do mesmo tipo.
 O mesmo valor pode aparecer em um array multiplas vezes em diferentes posições.
 
 Coleção onde todos os elementos são ordenados e do mesmo tipo.
 São indexados por índice e o valor inicial da indexação é sempre 0.
 A indexação é sempre sequencial, ou seja, não haverá buraco entre os números.
 
 */

var intArray = [Int]()
var auxIntArray: [Int] = [1, 2, 3]

//adiciona elemento no final do array
intArray.append(1)
print(intArray)

//adiciona conteudo de outro array no final do array
intArray.append(contentsOf: auxIntArray)
print(intArray)

//acessa o primeiro elemento do array
let first = intArray.first
print(first ?? "Array vazio")

//acessa o ultimo elemento do array
let last = intArray.last
print(last ?? "Array vazio")

//retorna o tamanho do array
let count = intArray.count
print(count ?? "Array vazio")

//remove o elemento na posicao desejada do array
print(intArray)
intArray.remove(at: 0)
print(intArray)

//remove todos os elementos do array
print(intArray)
intArray.removeAll()
print(intArray)

//retorna um booleano para a condicao de array vazio
let isEmpty = intArray.isEmpty
print(isEmpty)

// Criando array por inferência
var cars = ["gol", "omega", "hb20", "camaro", "fusca"]
print(cars)

let carOmega = cars[1]
print(carOmega)

// Alterar o elemento do array
cars[3] = "saveiro"
print(cars)

// Criando arrays de forma explicita
var guests : [String] = ["Ana", "Fernando", "Lúcio", "Claudia"]
let numbers: Array<Int> = [45, 23, 345, 47]

// Criando arrays vazios
var animals: [String] = []
var planets: Array<String> = []
var values = [Int]()

// Manipulando arrays - adicionando elementos ao fim do array
dump(guests)
guests.append("Juliana")
guests.append("Ana")
dump(guests)

// Manipulando arrays - adicionando elementos ao inicio do array ou em qualquer posição via indice
dump(guests)
guests.insert("Beatria", at: 2)
print(guests)

// Manipulando arrays - adicionando arrays
var othersGuests = ["Joao", "Lucas", "Robson"]
guests.append(contentsOf: othersGuests)
print(guests)

guests.append(contentsOf: ["Ricardo", "Roberta"])
print(guests)

guests += ["Kiko", "Paulo"]
print(guests)

// Manipulando arrays - removendo elementos
let lastRemoveGuests = guests.removeLast()
print(guests)
print("A pessoa removida foi \(lastRemoveGuests)")

let firstRemoveGuests = guests.removeFirst()
print(guests)
print("A pessoa removida foi \(firstRemoveGuests)")

let positionRemoveGuests = guests.remove(at: 4)
print(guests)
print("A pessoa removida do indice 4 foi \(positionRemoveGuests)")


// Manipulando arrays - contagem de elementos
let guestsCount = guests.count
print(guestsCount)


// Manipulando arrays - ordenacao de arrays
// Os arrays por default sao ordenados conforme
// a ordem de inclusao

// Para ordenar de outra forma é preciso usar um metodo
// e ele nao sobrescreve o array, ao inves disso cria
// um novo array
let orderedGuests = guests.sorted()
print(orderedGuests)

//let reversedGuests = guests.reversed()
//print(reversedGuests)

let reversedGuests = Array(guests.reversed())
print(reversedGuests)

let alphabeticReversedGuests = Array(guests.sorted().reversed())

// slice: não cria um novo array, mas sim uma referencia ao array anterior
//por isso ao tentar acessar o indice 0 no array firstThree dá erro de BadException.
let firstThree = guests[1...3]
//firstThree[0]

// para contornar esse erro, podemos criar um novo array com esses elementos da seguinte forma:
print(guests)
let firstFourGuests = Array(guests[1...4])
// percebemos por aqui que o array principal não é alterado, mas sim criado uma nova coleção a partir dele
print(guests)
print(firstFourGuests)
print(firstFourGuests[0])

// para validar se o array esta vazio

guests.isEmpty

// para validar se o array contem determinado elemento

guests.contains("Lúcio")
guests.contains("Edio")


var heteroArray: [Any] = [1, 2, 3, "4", "5", "6"]
print(heteroArray)



/**
 Sets: armazena valores distintos, do mesmo tipo, sem ordem definida.
 Não permite elementos duplicados.
 Seguem o proocolo hashValue, o que faz com que não permita a duplicidade.
 */

var musicGenresSet : Set<String> = ["Rock", "Pop"]
var auxMusicGenresSet = Set<String>()

// adiciona elemento no set
auxMusicGenresSet.insert("Samba")
print(auxMusicGenresSet)

// retorna um novo set com a interseccao entre dois sets
let intersectionSet = auxMusicGenresSet.intersection(musicGenresSet)
print(intersectionSet)

//retorna um novo array com a uniao entre dois sets
let unionSet = auxMusicGenresSet.union(musicGenresSet)
print(unionSet)

// retorna um novo array com a diferenca entre dois sets
let diffSet = auxMusicGenresSet.subtracting(musicGenresSet)
print(diffSet)

// retorna um booleano para a condicao NÃO HAVER elementos comuns entre dois sets
let isDisjoint = auxMusicGenresSet.isDisjoint(with: musicGenresSet)
print(isDisjoint)

//retorna um booleadno para a condicao de um set estar contido em outro
let isSubset = auxMusicGenresSet.isSubset(of: musicGenresSet)
print(isSubset)
print(auxMusicGenresSet)
auxMusicGenresSet.insert("Pagode")
auxMusicGenresSet.insert("Samba")
auxMusicGenresSet.insert("Rock")
auxMusicGenresSet.insert("Pop")
auxMusicGenresSet.insert("Funk")
auxMusicGenresSet.removeFirst()

print(auxMusicGenresSet)
auxMusicGenresSet.sorted()
print(auxMusicGenresSet)
auxMusicGenresSet.popFirst()
print(auxMusicGenresSet)

/***
 Dictionary: armazena uma associação entre chaves ( do mesmo tipo) e valores (do mesmo tipo), em uma coleção não ordenada.
 Cada valor é associado com uma única chave.
 A tipagem da chave e do valor não precisam ser do mesmo tipo.
 
 Coleção baseada em chave/valor.
 Todas as chaves precisam ser do mesmo tipo, assim como todos os valores tambem precisam ser do mesmo tipo.
 Porem as chaves não precisam ser do mesmo tipo que os valores.
 
 */

var intNames : [Int: String] = [:]
var countryNames : [String: String] = ["BR": "Brasil"]

//adicao de valor e chaves no dicionario - caso o valor já exista ele faz a substituição do mesmo
intNames[1] = "um"
intNames[2] = "Dois"
print(intNames)
intNames[1] = "Um"
print(intNames)

// retorna uam colecao com as chaves do dicionario
print(intNames.keys)

// retorna uam colecao com os valores do dicionario
print(intNames.values)

// acessa o valor associado a chave
print(intNames[0] ?? "O dicionario não possui a chave 0")
print(intNames[1] ?? "O dicionario não possui a chave 1")

// Criando dicionario por inferencia

var populationsCountries = [
    "Brasil": 200_000_000,
    "Argentina": 43_000_000
]

print(populationsCountries)


// Criando dicionario de forma explicita

var bookChapters: [String: String] = [
    "Intro": "Curso de swift",
    "Cap 1": "Tuplas sao agragadores de dados",
    "Cap 2": "Arrays sao colecoes de dados ordenados com indices",
    "Cap 3": "Dicionarios sao do tipo chave/valor"
]

var gamesPrice: Dictionary<String, Int> = [
    "Diablo" : 250,
    "Cyberpunk": 250,
    
]

// Criando dicionario vazio
var emptyDictionary: [String: String] = [:]
var countriesCapital: Dictionary<String, String> = Dictionary<String, String>()
var gameItem = [String: String]()


// Adicionando elementos no dicionario
populationsCountries["Uruguai"] = 3_500_000
populationsCountries["Paraguai"] = 2_000_000
populationsCountries["Chile"] = 4_500_000
populationsCountries["Peru"] = 3_200_000
dump(populationsCountries)

// Acessando elementos
let populationOfPeru = populationsCountries["Peru"]
print(populationOfPeru)

// Alterando elementos
populationsCountries["Chile"] = 2_100_000
print(populationsCountries)

populationsCountries.updateValue(2_300_000, forKey: "Chile")
print(populationsCountries["Chile"])

//Removendo elementos
populationsCountries["Chile"] = nil
print(populationsCountries)
populationsCountries.removeValue(forKey: "Peru")
print(populationsCountries)

let removedCountry = populationsCountries.removeValue(forKey: "Paraguai")
print("O pais removido foi \(removedCountry)")
print(populationsCountries)

// Contando elementos

let countCountries = populationsCountries.count
let message = "Este dicionario contem " + String(countCountries) + " elementos"
print(message)

//Verifica se o dicionario esta vazio
print(populationsCountries.isEmpty)




