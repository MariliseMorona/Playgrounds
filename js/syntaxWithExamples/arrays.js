const alunos = [
    {
        nome: "Pablo",
        idade: 20
    },
    {
        nome: "Jose",
        idade: 9
    },
    {
        nome: "Maria",
        idade: 21
    },
    {
        nome: "Joana",
        idade: 18
    },
]

console.log(alunos[2].nome)

alunos.push({
    nome: "Joao",
    idade: 23
})

const alunosMaior20 = alunos.filter(aluno => aluno.idade > 20)
console.log(alunosMaior20)

const alunoJoao = alunos.find(aluno => aluno.nome === "Joao")
console.log(alunoJoao)

const alunoJoaoIndex = alunos.findIndex((aluno) => aluno.nome === "Joao")
console.log(alunoJoaoIndex)

const idades = alunos.reduce((acc, aluno)=>{
    return acc + aluno.idade
},0)

console.log(idades)

const alunoMenor10anos = alunos.some(alunos => alunos.idade < 10)
console.log(alunoMenor10anos)

const alunoMenor100anos = alunos.every((alunos) => alunos.idade < 100)
console.log(alunoMenor100anos)