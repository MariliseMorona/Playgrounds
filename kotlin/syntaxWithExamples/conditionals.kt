fun main(args: Array<String>) {
    printlnIf()
}
//CONDITIONAL IF
fun printlnIf(){
    fun maxOld(a: Int, b: Int): Int {
        if(a > b){
            return a
        } else {
            return b
        }
    }
    fun max(a: Int, b: Int) = if (a > b) a else b
    
    println(maxOld(2, 5))
    println(max(2, 5))
}
