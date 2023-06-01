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


/**
 Sets: armazena valores distintos, do mesmo tipo, sem ordem definida.
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


/***
 Dictionary: armazena uma associação entre chaves ( do mesmo tipo) e valores (do mesmo tipo), em uma coleção não ordenada.
 Cada valor é associado com uma única chave.
 A tipagem da chave e do valor não precisam ser do mesmo tipo
 
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



