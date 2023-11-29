const idade = 15;
const nota = 7;
const dinheiros = 12;

// If - Else If
if (idade > 18) {
console.log("Maio que 18")
} else {
console.log("Menor que 18")
}

// Switch case
switch (nota) {
    case nota < 5:
        console.log("Abaixo da média")
        break
    case  nota > 5 && nota < 7:
        console.log("Na média")
        break
    case nota === 7 || nota > 7:
        console.log("Acima da média")
        break
    default:
        console.log("Quem é você ?")
        break
}

// Ternários
dinheiros > 10 ? console.log("Você tem muitos dinheiros") : console.log("Você tem poucos dinheiros")