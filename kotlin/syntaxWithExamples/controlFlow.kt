
fun main() {
    printWhenStatementCases()
    printWhenExpression()
}
//CONTROLES DE FLUXO

// WHEN: pode ser utilizado de forma declarativa ou via expressão
// o when é similar ao {switch case}
// - when declarativo (statement)
class MyClass

fun cases(obj: Any) {
    when (obj) {
        1 -> println("One")
        "Hello" -> println("Greeting")
        is Long -> println("is Long")
        !is String -> println("Not is string")
        else -> println("Unknown")
    }
}

fun printWhenStatementCases(){
	cases("Hello")
    cases(1)
    cases(2)
    cases("HELLO")
    cases(MyClass())
    cases(0L)
}
// - when expressão (expression)
fun whenAssign(obj: Any): Any {
    val result = when (obj) {
        1 -> "one"
        "Hello" -> 1
        is Long -> false
        else -> 42
    }
    return result
}

fun printWhenExpression(){
	println(whenAssign("Hello"))
    println(whenAssign("hello"))
    println(whenAssign(1))
    println(whenAssign(3L))
    println(whenAssign(MyClass()))
    
}
