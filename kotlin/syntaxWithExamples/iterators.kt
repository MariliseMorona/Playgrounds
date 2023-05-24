fun main() {
    printlnIterator()
}
//Iterators: operadores de iteração das estruturas de class

class Animal(val name: String)
class Zoo(val animals: List<Animal>){
    //operator fun cria dentro da class Zoo a capacidade de criar um laço
    operator fun iterator(): Iterator<Animal>{
        return animals.iterator()
    }
}

fun printlnIterator(){
    val zoo = Zoo(listOf(Animal("zebra"), Animal("lion")))
    for (animal in zoo) {
        println("Watch out, it's a ${animal.name}")
    }
}
