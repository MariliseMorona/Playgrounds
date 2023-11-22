fun main() {
    val url = readLine() ?: "" 

    val resultado: String

    if (url.startsWith("https://")) {
        resultado = "URL segura"
    } else if (url.startsWith("http://")) {
        resultado = "URL nao segura"
    } else {
      resultado = "Formato invalido"
    }
    println(resultado)
}