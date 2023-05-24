fun main(args: Array<String>) {
    printlnEquality()
}
//VERIFICAÇÃO DE IGUALDADE
// Comparação estrutural ==
// Comparação referencial === (mesma referencia de memória)

fun printlnEquality(){
    
    val authors = setOf("Shakespeare", "Hemingway", "Twain")
    val writers = setOf("Twain", "Shakespeare", "Hemingway")
    
    println(authors == writers)
    println(authors === writers)
    
}
