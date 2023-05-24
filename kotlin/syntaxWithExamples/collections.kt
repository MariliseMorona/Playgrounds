fun main(args: Array<String>) {
    printlnList()
    printlnSet()
    printlnMap()
    printlnFlatMap()
}
// COLEÇÕES
//	- LISTAS: coleção ordenada
//	listOf => lista imutavel
//	mutableListOf => lista mutavel

fun printlnList(){
    val systemUsers: MutableList<Int> = mutableListOf(1, 2, 3)
    val sudoers: List<Int> = systemUsers
    
    addSystemUser(systemUsers, 4)
    println("Tot sudoers: ${getSysSudoers(sudoers).size}")
    getSysSudoers(sudoers).forEach {
        i -> println("Some useful info on user $i")
    }
    
}

fun addSystemUser(systemUsers: MutableList<Int>, newUser: Int){
    systemUsers.add(newUser)
}

fun getSysSudoers(sudoers: List<Int>): List<Int> {
    return sudoers
}

// SET
fun printlnSet(){
    var openIssues: MutableSet<String> = mutableSetOf("uniqueDescr1", "uniqueDescr2", 
                                                      "uniqueDescr3")
    
    val newIssue: String = "uniqueDescr4"
    val anIssueAlready: String = "uniqueDescr2"
    
    println("Issue $newIssue ${getStatusLog(addIssue(openIssues, newIssue))}")
    println("Issue $anIssueAlready ${getStatusLog(addIssue(openIssues, anIssueAlready))}")
}

fun addIssue(openIssues: MutableSet<String>, uniqueDesc: String): Boolean {
    return openIssues.add(uniqueDesc)
}

fun getStatusLog(isAdded: Boolean): String {
    return if (isAdded) "registered correctly" else "marked as duplicade and rejected"
}

//MAP
//const deve ser global
const val POINTS_X_PASS: Int = 15
fun printlnMap(){
    
    val EZPassAccounts: MutableMap<Int, Int> = mutableMapOf(1 to 100, 2 to 100, 3 to 1000)
    val EZPassReport: Map<Int, Int> = EZPassAccounts
   
    accountsReport(EZPassReport)
    updatePointsCredit(EZPassAccounts, 1, POINTS_X_PASS)
    updatePointsCredit(EZPassAccounts, 1, POINTS_X_PASS)
    updatePointsCredit(EZPassAccounts, 5, POINTS_X_PASS)
    accountsReport(EZPassReport)
}

fun updatePointsCredit(passAccount: MutableMap<Int, Int>, accountId: Int, points: Int) {
    if(passAccount.containsKey(accountId)) {
        println("Updating $accountId")
        passAccount[accountId] = passAccount.getValue(accountId) + points
    } else {
        println("Error: trying to update a non-existing account (id: $accountId)")
    }
}

fun accountsReport(passReport: Map<Int, Int>){
    println("EZ-Pass report: ")
    passReport.forEach {
        k, v -> println("ID $k: credit $v")
    }
}
//FLATMAP
fun printlnFlatMap(){
    val fruitsBag = listOf("apple", "orange", "banana", "grapes")
    val clothersBag = listOf("shirts", "pants", "jeans")
    var cart = listOf(fruitsBag, clothersBag)
    
    val mapBag = cart.map { it }
    val flatMapBag = cart.flatMap { it }
    
    println(mapBag)
    println(flatMapBag)
}