fun main() {
    printlnFor()
    printlnWhile()
    printlnDoWhile()
}
//LOOPS: são controladores ou laços de repetição, podem ser FOR, WHILE e DO-WHILE
//FOR

fun printlnFor(){
    val cakes = listOf("carrot", "cheese", "chocolate")
    
    for (cake in cakes){
        println("Yummi, it's a $cake cake!")
    }
}

//WHILE and DO-WHILE

fun eatCake() = println("Eat a cake")
fun bakeACake() = println("Bake a cake")

fun printlnWhile(){
    var cakesEaten = 0
    
    while (cakesEaten < 5) {
        eatCake()
        cakesEaten ++
    }
}

fun printlnDoWhile(){
    var cakesEaten = 0
    var cakesBaked = 0
    
    while (cakesEaten < 5) {
        eatCake()
        cakesEaten ++
    }
    
    do {
        bakeACake()
        cakesBaked ++
    } while (cakesBaked < cakesEaten)
}
