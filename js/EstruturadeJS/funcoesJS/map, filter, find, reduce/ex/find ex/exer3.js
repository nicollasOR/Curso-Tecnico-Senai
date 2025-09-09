const alunos = [
    {nome: `Ana`, nota: 8},  
    {nome: `Carlos`, nota: 5},
    {nome: `Beatriz`, nota: 9},
]    

const maiorSete = alunos.find(aluno => aluno.nota >= 7)
console.log(maiorSete)