fun main() {
    val media = readLine()!!.toDouble();
    // OR set value:
    // val media = 4
    
    when {
        media < 5 -> println("REP");
        media >= 5 && media < 7 -> println("REC")
        media > 7 -> println("APR")
        else -> ("Tirei 7, devo estar aprovado 🤷‍♀️")
    }
 }