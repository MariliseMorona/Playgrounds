fun main() {
    printVariablesAndConstants()
}

fun printVariablesAndConstants(){
    var a: String = "Initial"
    var b: Int = 1
    var c = 3
    val d: Int
    
    if (someConditions()){
        d = 1
    } else {
        d = 2
    }
    
    println(a)
    println(b)
    println(c)
    println(d)
}
