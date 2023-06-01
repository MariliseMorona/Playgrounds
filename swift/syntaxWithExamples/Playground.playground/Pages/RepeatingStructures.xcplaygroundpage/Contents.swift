//: [Previous](@previous)

import Foundation
import Darwin

/**Estruturas de repeticao
Ajudam na execucao de tarefas que precisam ser repetidas N vezes
 dentro de uma condicao pré-determinada ou sobre uma sequencia.
**/


/**ITERAÇÃO
 Cada repeticao dentro de um loop. Cada vez que uma condicao eh avaliada e a execucao do bloco de codigo é validada dentro de um loop, ela é uma iteracao.
 E o processo chamado na programao de repeticao de uma ou mais acoes.
 É importante salientar que cada iteracao se refere a apenas uma instancia da acao, ou se ja, cada repeticao possui uma ou mais iteracoes.**/

/**WHILE & REPEAT / WHILE
Sao estruturas que executam um bloco de codigo ate que uma condicao deix de ser satisfeita.
 Ambas estruturas travalham de forma similiar, precisam de uma condicao para entender se devem ou nao continuar executando suas iteracoes, porem WHILE confere a condicao antes de cada iteracao.
 Com isso e possivel que WHILE nunca venha a ser executado, enquanto REPEAT/ WHILE ira sempre executar a primeira iteracao.
**/

/**WHILE
Confere a condicao para depois executar o codigo
 **/
do {
    var number = 0
    let max = 10
    
    while number < max {
        // entra o codigo a ser repetido
        print(number)
        /**
         Lembre-se de sempre garantir que a condicao sera satisfeita em algum momento
         */
        number += 1
    }
    print("depois do while")
    print()
}

/**

 REPEAT / WHILE
 Executa o bloco para depois conferir a condicao
 */
do {
    var number = 0
    let max = 10
    
    repeat {
        print(number)
        /**
         Lembre-se de sempre garantir que a condicao sera satisfeita em algum momento
         */
        number += 1
    } while number < max
    
    print("depois do repeat while")
    print()
}

/**
 Exemplos com Arrays
 
 */

let guests = ["Ana", "Jorge", "Juliano", "Fabricio", "Zelia", "Antonio"]

do {
    let count = guests.count
    var index = 0
    
    print("-/-/-/-/-/ Lista de Convidados /-/-/-/-/-/-")
    
    while index < count {
        let guest = guests[index]
        print("\(index + 1). \(guest)")
        index += 1
    }
    print()
}

do {
    let count = guests.count
    var index = 0
    
    print("-/-/-/-/-/ Lista de Convidados com J /-/-/-/-/-/-")
    
    while index < count {
        let guest = guests[index]
        
        // guest é uma string, e por isso é uma colecao, entao é possivel pegar o primeiro elemento com first
        if guest.first == "J" {
        print("\(index + 1). \(guest)")
        }
        index += 1
    }
}

/**
 OUTROS EXEMPLOS
 **/

/**
 Encontrar o primeiro numero a partir de um limite, somando parcelas iguais de um determinado valor.
 Exemplo: qual seia o primeiro numero a partir de 1000 que teriamos se somassemos parcelas de 4 em 47.
 */

do {
    var value = 0
    let maxValue = 1000
    let partialValue = 4
    
    while value < maxValue {
        value += partialValue
        print(value)
    }
    print("Somando valores de \(partialValue), temos \(value) como primeiro numero a partir de \(maxValue)")
    print()
}

/**
 Quantas vezes eu consigo dividir um numero determinado por 6
 */

do {
    let value = 300
    let divisor = 6
    var count = 0
    var partialValue = value
    
    while partialValue > divisor {
        partialValue = partialValue / divisor
        count += 1
    }
    
    print("Eu consegui dividir o \(count) vezes o numero \(value) por \(divisor)")
}

/**
 Imprimir numeros da serie Fibonacci de 1 a X (limite maximo)
 */

do {
    var firstValue = 1
    var secondValue = 1
    let maxLimit = 500
    
    while secondValue <  maxLimit {
        let temp = secondValue
        // secondValue = secondValue + firstValue
        secondValue += firstValue
        firstValue = temp
        print(" ----> \(firstValue) ----")
    }
}

/**
 FOR / IN
 
 E a estrutura de repeticao ideal para iterar sobre coisas das quais se tenham previsibilidade como um range ou uma colecao.
 Diferente das estruturas while e repeat/ while, nao é necessario fazer controle manual da condicao parada.
 
 */

let guests2 = ["Ana", "Jorge", "Juliano", "Fabricio", "Zelia", "Antonio"]

let countriesPopulation = ["Japao" :  130_000_000,
                          "Brasil": 200_000_000,
                          "Argentina": 43_000_000,
                          "Uruguai": 4_000_000,
                          "Paraguai": 2_000_000]

/**
 Imprimir elementos de 1 a 10
 **/

do {
    for number in 1...10 {
        print(number)
// para cada iteracao, nmber assumira um valor da sequencia ou colecao
    }
    print()
}

/**
 Imprimir a lista de convidados
 */

do {
    for guest in guests {
        print(guest)
    }
    print()
}

/**
 Imprimir a lista de convidados numerada
 **/

do {
    for guest in guests.enumerated() {
        // enumerated pega o array e transforma cada elemento do array em uma tupla, ficando assin um array de tuplas.
        print("\(guest.offset) - \(guest.element)")
    }
    print()
}

//let tupla = ("asdf", 10, 10)

/**
 Forma melhorarada
 */

do {
    //decomposicao da tupls
    for (index, guestName) in guests.enumerated() {
        print("\(index) - \(guestName)")
    }
    print()
}

print(guests)
print(guests.enumerated())
print(Array(guests.enumerated()))

/**
 Imprimir dicionarios
 */

do {
    for countryPopulation in countriesPopulation {
        print("A populacao de \(countryPopulation.key) é de \(countryPopulation.value) habitantes")
    }
}

/**
 Forma melhorada
 */

do {
    for (country, population) in countriesPopulation {
        print("A populacao de \(country) é de \(population) habitantes")
    }
    print()
}

/**
 O FOR/ IN tem afinidade com sequencias e colecoes.
 O while tbm pode ser usado, porem exige controle manual atraves do inidice.
 */


/**
 WHERE
 */

/**
 Imprimir numeros de 1 a 100 divisiveis por 3
 */

do {
    let divisor = 3
    let lowerLimit = 1
    let upperLimit = 100
    
    for number in lowerLimit...upperLimit {
        // esse for é executado 100 vezes
        //porem o if so é execitado 33 vezes
        let a = 0
        if number % divisor == a {
            print(number)
        }
        print()
    }
}
 print("usando o where")
do {
    let divisor = 3
    let lowerLimit = 1
    let upperLimit = 100
    
    for number in lowerLimit...upperLimit where number % divisor == 0 {
        // aqui o for so e executad 33 vezes
            print(number)
    }
        print()
}


// A LEGIBILIDADE DEVE VIR ANTES DA REDUCAO DO VOLUME DE LINHAS


/**Imprimir paises com populacao superior a 10M**/

do {
    let minPopulation = 10_000_000
    
    print("Paises com mais de \(minPopulation) de habitantes")
    
    for (country, population) in countriesPopulation {
        if population >= minPopulation {
            print("\(country) com \(population) habitantes.")
        }
    }
    print()
}

do {
    let minPopulation = 10_000_000
    
    print("Paises com mais de \(minPopulation) de habitantes")
    
    for (country, population) in countriesPopulation where population >= minPopulation {
            print("\(country) com \(population) habitantes.")
    }
    print()
}
