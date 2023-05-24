fun main() {
    printIsNullabilityCases()
}
//NULL SAFETY NULABILITY
fun strLength(notNull: String): Int {
    return notNull.length
}

fun ifStrLength(str: String?): Int {
    return str?.length ?: 0
}

fun describeString(maybeString: String?): String {
    if(maybeString != null && maybeString.length > 0) {
        return "The string of length ${maybeString.length}"
    } else {
        return "Empty ou null string"
    }
}

fun printIsNullabilityCases(){
    var neverNull: String = "This can't be null"
    //neverNull = null
    
    var nullable: String? = "You can keep a null here."
    nullable = null
    
    var inferredNonNull = "The compiler assumes non-null."
	//inferredNonNull = null 
    println(neverNull)
    println(nullable)
    println(inferredNonNull)
    println(strLength(""))
    println(strLength("Hello"))
    println(ifStrLength(null))
    println(ifStrLength("Hello"))
    println(describeString(null))
    println(describeString(""))
    println(describeString("Hello"))
}
