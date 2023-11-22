using System;

class Program {
    static void Main(string[] args) {
        string url = Console.ReadLine(); 
        string resultado;
        if (url.StartsWith("https://")) {
          resultado = "URL segura";
        } else if (url.StartsWith("http://")) {
          resultado = "URL nao segura";
        } else {
          resultado = "Formato invalido";
        }
        Console.WriteLine(resultado);
    }
}