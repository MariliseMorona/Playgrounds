fun main() {
    printClasses()
    printMutableStack()
    printMutableStackOf()
}
// classes: modelo para criação de objetos
class Customer
class Contact(val id: Int, var email: String)

fun printClasses(){
	val customer = Customer()
    val contact = Contact(1, "mary@gmail.com")

    println(contact.id)
    println(contact.email)
    contact.email = "jane@gmail.com"
    println(contact.email)
}


//Classes genéricas => Generics
//dá flexibilidade na tipagem, geralmente usado em colecões e dicionarios
class MutableStack<E>(vararg items: E){
    private val elements = items.toMutableList()
    fun push(element: E) = elements.add(element)
    fun peek(): E = elements.last()
    fun pop(): E = elements.removeAt(elements.size -1)
    fun isEmpty() = elements.isEmpty()
    fun size() = elements.size
    override fun toString() = "MutableStack(${elements.joinToString()})"
}

fun <E> mutableStackOf(vararg elements: E) = MutableStack(*elements)

fun printMutableStack(){
    val stack = MutableStack(0.62, 3.14, 2.7)
    println(stack)
    stack.push(9.87)
    println(stack)
    
    println("peek(): ${stack.peek()}")
    println(stack)
    
    for (i in 1..stack.size()) {
        println("pop(): ${stack.pop()}")
        println(stack)
    }
}

fun printMutableStackOf(){
    val stack = mutableStackOf(1, 2, 3)
    val stackTwo = mutableStackOf<String>("a", "d", "x")
    println(stack)
    println(stackTwo)
}
