//: [Previous](@previous)

import Foundation

/**
 Enumerations - enums
 
 Tipo personalizado de agrupamento de valores.
 Serve para limitar opcoes de valores que podem ser atribuidos a um tipo especifico.
 
 Pode ser usado para substituir if else, e numeros mágicos em validações. Alem de barrar valores indesejados, limitando as impossiblidades e incertezas.
 
 
 */

// Declaracao de enumeration
// deixamos o nome do enum no singular, pois embora tenhamos varios cases, so podemos usar um de cada vez
enum MovieGenre {
    case action
    case comedy
    case romantic
    case adventure
    case musical
    case drama
}

// Utilizacao do enum

func testEnumMovieGenre(){
    print("===== Testando categoria de filmes ======")
    
    var movieType: MovieGenre = MovieGenre.action
    print(movieType)
    
    movieType = .comedy
    print(movieType)
}
testEnumMovieGenre()

/**
Enum tambem podem ser tipados e conter valores.
 */

enum Language: String {
    case portuguese = "Portugues"
    case english = "Inglës"
    case french = "Frances"
}
func testEnumLanguage() {
    print("===== Testando categoria de linguagens ======")
    
    var language: Language = Language.portuguese
    print(language)
    
    language = .french
    // Podemos acessar o valor guardado dentro do enum tipado
    print(language.rawValue)
    
    //Enums tipados podem ser inicializados
    let value = "Portugues"
    let otherValue = "Espanhol"
    
    if let newLanguage = Language(rawValue: value) {
        print("idioma valido: \(newLanguage)")
    } else {
        print("idioma invalido")
    }
    
    if let newLanguage = Language(rawValue: otherValue) {
        print(newLanguage)
    } else {
        print("idioma invalido")
    }
}

testEnumLanguage()


/**
 Enums associativos
 
 */

enum Coordinates{
    case twoDimensions(x: Int, y: Int)
    case threeDimensions(x: Int, y: Int, z: Int)
    case nowHere
}

func testCoordinatesEnum(){
    print("===== Testando enums associativos ======")
    
    var coordinates: Coordinates = .nowHere
    coordinates = .twoDimensions(x: 10, y: 20)
    coordinates = .threeDimensions(x: 15, y: 30, z: 60)
    
    
    switch coordinates {
    case .nowHere:
        print("Coordenadas para lugar nenhum")
    case .twoDimensions(let coordX, let coordY):
        print("Coordenadas 2D (X: \(coordX), Y: \(coordY))")
    case .threeDimensions(let coordX, let coordY, let coordZ):
        print("Coordenadas 2D (X: \(coordX), Y: \(coordY), Z: \(coordZ))")
    // como boa pratica o ideal eh nao utilizar o default
//    default:
//        print("Coordenadas para algum lugar")
    }
    print()
    
    
    print()
    
}
testCoordinatesEnum()

/**
 Enums podem ter propriedades e metodos
 */

enum Metric {
    case kilometers(Float)
    case miles(Float)

    var miles: Float {
        switch self {
        case .kilometers(let value):
            return value * 1.6
        case .miles(let value):
            return value
        }
    }
    
    var kilometers: Float {
        switch self {
        case .kilometers(let value):
            return value
        case .miles(let value):
            return value / 1.6
        }
    }
}

func testMetricEnum(){
    print("===== Testando enum de metricas ======")
    
    let kilometers = Float(200)
    let metricKilometers = Metric.kilometers(kilometers)
    
    print("\(metricKilometers.kilometers) kilometros sao \(metricKilometers.miles) milhas")
    
    let miles = Float(400)
    let metricMiles = Metric.miles(miles)
    
    print("\(metricMiles.miles) milhas sao \(metricMiles.kilometers) kilometros")
    
}
testMetricEnum()


/** Exemplo   */

enum BeltColor {
    case white
    case blue
    case purple
    case brown
    case black
    case red
}

var myBelt: BeltColor = BeltColor.blue
