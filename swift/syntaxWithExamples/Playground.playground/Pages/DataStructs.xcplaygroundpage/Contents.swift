//: [Previous](@previous)

import Foundation

/**
 Pilhas: são  um tipo de estrutura de dados do tipo LIFO - Last in, first out
 O acesso é restrito somente ao primeiro elemento da pilha (topo).
 
Operaçoes basicas:
 push() => insere um elemento no topo
 pop() => retura um elemento do topo
 top() => observa o topo
 
 Métodos auxiliares
 isEmpty => checa se a pilha esta vazia
 isFull => checa se uma pilha esta cheia (no caso de linguagens sem alocação dinâmica)
 */

struct StringStack {
    private var array = [String]()
    /**
        As structs são imutáveis, por isso faz-se necessário incluir o mutating para indicar que o método está fazendo alterações no valor.
     O mutating retorna uma nova struct no local.
     */
    mutating func push(item: String){
        array.append(item)
    }
    
    mutating func pop() -> String? {
        return array.popLast()
    }
    
    mutating func top() -> String? {
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

print(stack.top() ?? "Pilha Vazia")

stack.pop()
print(stack.top() ?? "Pilha Vazia")


stack.push(item: "secondItem")
print(stack.top() ?? "Pilha Vazia")

stack.pop()
print(stack.top() ?? "Pilha Vazia")

/**
 Fila: são um tipo de estrutura de dados do tipo FIFO - first in, first out.
 O primeiro elemento que entra é o primeiro que sai.
 
 Operações básicas:
 enqueue() => insere um elemento na fila
 dequeue() => retira um elemento da fila
 peek() => observa o primeiro elemento da fila
 
 A remoção de um elemento é realizada alterando a posição do último elemento.
 As filas trabalham com ponteiros de primeiro e último elementos.
 
 Métodos auxiliares:
 isEmpty => checa de uma fila está vazia
 isFull => checa se uma fila está cheia (no caso de linguagens sem alocação dinâmica)
 */

struct IntQueue {
    var items: [Int] = []
    
    mutating func enqueue(item: Int) {
        items.append(item)
    }
    
    mutating func dequeue() -> Int? {
        if items.isEmpty {
            return nil
        } else {
            let tempElement = peek()
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

var element = queue.dequeue()
print(element)

queue.enqueue(item: 0)
print(queue.dequeue() ?? "A fila esta vazia")


queue.enqueue(item: 2)
queue.enqueue(item: 3)

let dequeue = queue.dequeue()
print(dequeue ?? "A fila esta vazia")

let secondDequeue = queue.dequeue()
print(secondDequeue ?? "A fila esta vazia")

let peek = queue.peek()
print(peek ?? "A fila esta vazia")

print(queue.isEmpty)

/**
 Listas: são um tipo de estrutura de dados na qual elementos de um mesmo tipo de dados estão organizados de maneira sequencial.
 Não necessariamente, estes eleemntos estão fisicamente em sequência, mas a idéia é que existra uma ordem lógica entre eles.
 
 Cada elemento da lista é chamado de nó ou nodo.
 
 * Listas ligadas  ou encadeadas: é um tipo de estrutura muito flexível e suporta inserção e retirada de daos de locais arbitrários.
 Vantagem => flexibilidade permitida no uso da memória.
 Desvantagem: alocar memória é uma tarefa demorada (mais lenta quea cesso a pilhas e filas, por exemplo).
 
 As vezes convém tratar o primeiro nó de uma lista encadeada como um mero marcador de início e ignorar o conteúdo da célula.
 
 ***
 
 * Listas duplamente ligadas ou duplamente encadeadoas: cada nó aponta em duas direções.
 Com essa estrutura é possível percorrer os dados em ambos os sentidos.
 
 * Lista circular: algumas aplicações necessitam representar conjuntos c[iclicos. Por exemplo, as aretas delimitam uma face podem ser agrupadas por uma estrutura circular. O último elemento tem como próximo o primeiro elemento da lista, formando um ciclo.
 Como a lista ligadas, ela só pode ser percorrida em um único sentido.
 
 Operações básicas:
 Inserção de um elemento
 Remoção deum elemento
 Acesso de um elemento
 
 */
//uma struct não pode ter um elemento recursivo, por isso foi feito uma classe
class Node {
    var value: String
    var next: Node?
    
    init(value: String) {
        self.value = value
    }
}

class SimpleLinkedList {
    private var head: Node?
    private var tail: Node?
    
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        return tail
    }
    
    public func append(value: String){
        let newNode = Node(value: value)
        
        if let tailNode = tail {
            tailNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    public func nodeAt(index: Int) -> Node? {
        if index >= 0 {
            var node = head
            var i = index
            
            
            while node != nil {
                if i == 0 { return node }
                
                i -= 1
                node = node!.next
            }
            
            return node
        }
        return nil
    }
    
    public func removeAll() {
        head = nil
        tail = nil
    }
    
    public func remove(node: Node){
        var current = self.head
        var previous: Node? = nil
        
        while current != nil {
            if current?.value == node.value {
                // ou é do meio da lista ou é a calda
                if previous != nil {
                    // se o nó for a cauda, a deletamos
                    if current?.value == self.tail?.value {
                        self.tail = previous
                    }
                    //atualiza o ponteiro proximo, agora é a cauda
                    previous?.next = current?.next
                    break
                    //se não, ele é a cabeça
                } else {
                    // se a cabeça for igual a cauda
                    if current?.value == self.tail?.value {
                        self.tail = previous
                    }
                    //atualiza
                    self.head = current?.next
                    break
                }
            }
        }
    }
}

extension SimpleLinkedList: CustomStringConvertible {
    public var description: String {
        var text = "["
        var node = head
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", " }
        }
        return text + "]"
    }
}

var linkedList = SimpleLinkedList()
linkedList.append(value: "Banana")
print(linkedList.description)

linkedList.append(value: "Morango")
print(linkedList.description)

let firstNode = linkedList.nodeAt(index: 0)
print(firstNode?.value)

let secondNode = linkedList.nodeAt(index: 1)
print(secondNode?.value)

let invalidNode = linkedList.nodeAt(index: -1)
let secondInvalidNode = linkedList.nodeAt(index: 2)
print(invalidNode?.value)
print(secondInvalidNode?.value)


//linkedList.removeAll()
print(linkedList.isEmpty)
print(linkedList.description)

let node = Node(value: "Banana")
linkedList.remove(node: node)
print(linkedList.description)

/**

 Lista duplamente ligada
 
 */
class OtherNode {
    var value: String
    var next: OtherNode?
    weak var previous: OtherNode?
    
    init(value: String) {
        self.value = value
    }
}


class DoubleLinkedList {
    private var head: OtherNode?
    private var tail: OtherNode?
    
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: OtherNode? {
        return head
    }
    
    public var last: OtherNode? {
        return tail
    }
    
    public func append(value: String){
        let newNode = OtherNode(value: value)
        
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    public func nodeAt(index: Int) -> OtherNode? {
        if index >= 0 {
            var node = head
            var i = index
            
            while node != nil {
                if i == 0 { return node }
                
                i -= 1
                node = node!.next
            }
            return node
        }
        return nil
    }
    
    public func remove(node: OtherNode) -> String {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        
        // atualiza o ponteiro anterior do proximo nó
        next?.previous = prev
        
        // se o proximo for nulo, remove a caudaera
        if next == nil {
            tail = prev
        }
        node.previous = nil
        node.next = nil
        
        return node.value
    }
    
    public func removeAll() {
        head = nil
        tail = nil
    }
}

extension DoubleLinkedList: CustomStringConvertible {
    public var description: String {
        var text = "["
        var node = head
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", " }
        }
        return text + "]"
    }
}

var doubleList = DoubleLinkedList()
doubleList.append(value: "Banana")
doubleList.append(value: "Morango")

print(doubleList.description)

let firstDouble = doubleList.nodeAt(index: 0)
print(firstDouble?.value)

if let first = doubleList.nodeAt(index: 0) {
    doubleList.remove(node: first)
    print(first.value)
}
print(doubleList.description)


/**
 Árvores: representa uma coleção de dados de uma forma hierárquica.
 
 Uma árvore binária T é um conjunto (fnito) de nós, onde:
    T é vazia, ou
    T consiste de um nós chamado raiz e duas árvores binárias que não possuem elementos comum (disjuntas)
 
 A árvore vazia não contém nenhum nó
 A árvore trivial contém apenas um nó
 Um nó que não tem filhos, é uma folha.
 Um caminho em uma árvore, é uma sequência de nós tal que cada nó é um filho do anterior (excluindo o primeiro nó do caminho)
 Um nó A é chamado anestral de um nó B se existe um caminho que começa em A e termina em B.
 
 O nível ou profundidade de um nó pode ser definido da seguinte forma:
    A  raiz da árvore tem nível 1
    Se um nó tem um nível i, então os seus filhos têm n[ivel i + 1.
 
 A altura de um nó A é o número de nós no caminho mais longo, começando em A e terminando em um nó antes de uma folha.
 A altura de uma árvore é a altura da raiz
 A altura da árvore vazia é -1.

 */

//indirect adiciona uma camada de referencia no codigo, pois ao criar um tipo de referência de valor o Swift precisa saber o espaço de memória que ele deve alocar para o objeto.

//indirect enum StringBinaryTree {
//    case empty
//    case node(StringBinaryTree, String, StringBinaryTree)
//}

enum StringBinaryTree {
    case empty
    indirect case node(StringBinaryTree, String, StringBinaryTree)
}

let leafD = StringBinaryTree.node(.empty, "D", .empty)
let leafE = StringBinaryTree.node(.empty, "E", .empty)
let leafF = StringBinaryTree.node(.empty, "F", .empty)
let leafG = StringBinaryTree.node(.empty, "G", .empty)

let nodeB = StringBinaryTree.node(leafD, "B", leafE)
let nodeC = StringBinaryTree.node(leafF, "C", leafG)

let root = StringBinaryTree.node(nodeB, "A", nodeC)

extension StringBinaryTree: CustomStringConvertible {
    var description: String {
        switch self {
        case let .node(left, value, right):
            return "value: \(value), left = [" + left.description + "], right = [" + right.description + "]"
        case .empty:
            return ""
        }
    }
}
print(root)

