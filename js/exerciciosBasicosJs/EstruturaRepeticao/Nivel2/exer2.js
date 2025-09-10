let meuNumero = 56;
let usuarioNumero = Number(prompt('Digite seu numero'));

while(usuarioNumero !== meuNumero)
{
    usuarioNumero = Number(prompt('Tente novamente, numero errado'));
    if(usuarioNumero === meuNumero)
        alert('acertou garai')
    
}
alert('Muito bem, vc acertou');
    
/* Made by Techer Kessia

let numberAleatory = Math.floor(Math.random() * 100)
! Math floor = arrendonda
! Math.random = gera numeros aleatorios de 0 ate 1 (sem incluir o 1)

let numberUser = parseInt(prompt(`Tente adivinhar um numero: `))

while(numberUser != numberAleatory)
{
if(numberUser > numberAleatory)
{
alert(`O numero ${numbrUser} eh maior que o meu numero`)

numberUser = parseInt(prompt(`Tente novamente adivinhar um numero: `))
}
else if(numberUser < numberAleatory)
{
alert(`O numero ${numbrUser} eh maior que o meu numero`)
numberUser = parseInt(prompt(`Tente novamente adivinhar um numero: `))
}
break;
}
console.log(`Parabens voce acertou `)








*/