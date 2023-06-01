//: [Previous](@previous)

import Foundation

import Foundation

/**Estrutura de dados
 
 Organizam dados
 Operações sobre os dados e sobre a propria estrutura
 
 Se diferem pela eficiência para buscas e pelos padrões de acesso a estrutura.
 **/

/**Listas
 Exemplos
 =>Processos executados em SO são organizados em filas.
 =>Já as chamadas de funções em um interpretador são executadas em pilhas.
 **/

/**PILHAS
 LIFO (last in, first out): primeiro a entrar é o ultimo a sair.
 Operações básicas em uma pilha são
 *push(): insere um elemento no topo
 *pop(): retira um elemento do topo
 *top(): observa o topo
 
 Em uma pilha ideal, operações básicas devem ocorrer em O(1), independentemente do tamanho N da pilha (ou seja, em tempo constante).
 
 Métodos auxiliares em pilhas:
 isEmpty: checa se a pilha esta vazia
 isFull: checa se a pilha esta cheia (para linguagem sem alocação dinâmica)
 **/

struct StringStack{
    private var array = [String]()

    //indica que os metodos são modificadores
    mutating func push(item: String) {
        array.append(item)
    }
    
    mutating func pop() -> String? {
        return array.popLast()
    }
    
    func top() -> String? {
        return array.last
    }
    
    var isEmpty: Bool {
        return array.isEmpty
    }
}

var stack = StringStack()
print(stack.isEmpty)
stack.push(item: "firstItem")
print(stack.isEmpty)
print(stack.top() ?? "Pilha vazia")
stack.push(item: "secondItem")
print(stack.isEmpty)
print(stack)
stack.pop()
print(stack.isEmpty)
stack.pop()
print(stack.isEmpty)

/**FILAS
 FIFO (first in, first out): ultimo a entrar é o ultimo a sair.
 Acesso aos elementos é restrito ao mais antigo.
 Operações básicas em uma pilha são
 *enqueue(): insere um elemento por ultimo na fila
 *dequeue(): retira o primeiro elemento da fila
 *peek(): observa o primeiro elemento da fila
 
 A remoção de um eleento é realizada alterando a posição do ultimo elemento.
 A fila simula uma representação circular, evitando que ela não seja capaz de inserir mais elementos, mesmo não estando cheia.
 
 Métodos auxiliares em pilhas:
 isEmpty: checa se a fila esta vazia
 isFull: checa se a fila esta cheia (para linguagem sem alocação dinâmica)
 
 */

struct IntQueue {
    private var items = [Int]()
    
    mutating func enqueue(item: Int) {
        items.append(item)
    }
    
    mutating func dequeue() -> Int? {
        if items.isEmpty {
            return nil
        } else {
            let tempElement = items.first
            items.remove(at: 0)
            return tempElement
        }
    }
    
    func peek() -> Int? {
        return items.first
    }
    var isEmpty: Bool {
        return items.isEmpty
    }
}

var queue = IntQueue()
queue.enqueue(item: 0)
let firstElement = queue.peek()
print(firstElement ?? "A fila esta vazia")

queue.enqueue(item: 2)
queue.enqueue(item: 3)

let dequeue = queue.dequeue()
print(dequeue ?? "A fila esta vazia")

let element = queue.dequeue()
print(element)

let secondDequeue = queue.dequeue()
print(secondDequeue ?? "A fila esta vazia")

let peek = queue.peek()
print(peek ?? "A fila esta vazia")

let newElement = queue.dequeue()
print(newElement)

print("isEmpty =", queue.isEmpty)

/**Árvores
 Exemplo
 =>São os diretórios de computadores e aplicativos de busca.**/

/**Grafos
 Exemplos
 =>Redes  sociais que fazem sugestões de conexões.**/
