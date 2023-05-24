fun main(args: Array<String>) {
    printlnRange()
}

//RANGES
fun printlnRange(){
    //included 3
    for (i in 0..3) {
        println(i)
    }
    
    // excluded 3
     for (i in 0 until 3){
        println(i)
    }
     
      // steps 2 in 2
     for (i in 2..8 step 2){
        println(i)
    }
     
      // decresced
     for (i in 3 downTo 0){
        println(i)
    }
     // caracter suported
     for (c in 'a'..'d'){
         println(c)
     }
     
     for (c in 'z' downTo 's' step 2){
         println(c)
     }
     
     //used in conditions
    val x = 2 
    
    if (x in 1..5){
         println("x is in range from 1 to 5")
     }
    
    if (x !in 6..10){
        println("x is not in range from 6 to 10")
    }
    
}
