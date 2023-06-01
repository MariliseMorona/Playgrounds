import UIKit

// Arrays

// Coleção onde todos os elementos são ordenados
// e do mesmo tipo.
// São indexados por índice e o valor inicial
// da indexação é sempre 0.
// A indexação é sempre sequencial, ou seja,
// não haverá buraco entre os números.

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
