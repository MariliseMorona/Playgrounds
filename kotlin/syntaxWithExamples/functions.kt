fun main() {
    printFuncs()
}

//retorno Unit => pode retornar alguma coisa ou não
fun printMessage(message: String): Unit {
    println(message)
}
//função sem retorno parametrizada com um valor default para um dos parametros String
fun printMessageWithPrefix(message: String, prefix: String = "Info") {
    println("[$prefix] $message")
}
//retorna o tipo específico Int
fun sum(x: Int, y: Int): Int {
    return x + y
}
fun multiply(x: Int, y: Int) = x * y
fun someConditions() = true

//tipo de parametro onde a gente vai pasar uma quantidade indeifinida de determinado tipo
//comporta-se quase como um array
fun printAll(vararg messages: String){
    for (m in messages) println(m)
}

//argumento nomeado
fun printAllWithPrefix(vararg messages: String, prefix: String){
    for (m in messages) println(prefix + m)
}

//se for necessario chamar uma funcao vararg dentro de outra, utilizar o *
//se nao for passado, neste caso, o * ela vai chamar na forma de valor array, e nao de varagr
fun log(vararg entries: String){
    printAll(*entries)
}

fun printFuncs(){
    printMessage("Hello")
    printMessageWithPrefix("Hello", "Log")
    println(sum(1,2))
    println(multiply(2,4))
    printAll("Oi", "Hello", "Hallo", "Salut", "Hola")
    printAllWithPrefix("Oi", "Hello", "Hallo", "Salut", "Hola", prefix = "Greeting: ")
	log("Oi", "Hello", "Hallo", "Salut", "Hola")
}
