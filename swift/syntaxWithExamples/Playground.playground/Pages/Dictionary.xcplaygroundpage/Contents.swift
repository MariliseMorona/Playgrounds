import Foundation

/* Dicionario

 Coleção baseada em chave/valor
 Todas as chaves precisam ser do mesmo tipo, assim
 como todos os valores tambem precisam ser do mesmo tipo.
 Porem as chaves não precisam ser do mesmo tipo que
 os valores
 
*/

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

//Removendo elementos
populationsCountries["Chile"] = nil
print(populationsCountries)

let removedCountry = populationsCountries.removeValue(forKey: "Paraguai")
print("O pais removido foi \(removedCountry)")
print(populationsCountries)

// Contando elementos

let count = populationsCountries.count
let message = "Este dicionario contem " + String(count) + " elementos"
print(message)

//Verifica se o dicionario esta vazio
print(populationsCountries.isEmpty)


