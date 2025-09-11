let numero_max = Number(prompt(`Digite um numero ai: `))
let numeros_perfeitos = []

for(let n_test = 1; n_test <= numero_max; n_test++) // testa um por um, qual eh perfeito
{
    let somaDivisores = 0;
    for(let divisor_testado = 1; divisor_testado < numero_max; divisor_testado++) // Verificacao se eh divisor
    {
        if(n_test % divisor_testado == 0)
        {
            somaDivisores += divisor_testado;
        }
    }

    if(somaDivisores == n_test) // verificacao do numero perfeito
    {
        console.log( n_test + " eh um numero perfeito")
      
    }
}

console.log(numeros_perfeitos)


/*
let numero_max = Number(prompt("Digite um numero ai: "));
let perfeitos = []; 

for (let n_test = 1; n_test <= numero_max; n_test++) {
    let somaDivisores = 0;

    for (let divisor_testado = 1; divisor_testado < n_test; divisor_testado++) {
        if (n_test % divisor_testado === 0) {
            somaDivisores += divisor_testado;
        }
    }

    if (somaDivisores === n_test) {
        perfeitos.push(n_test); // adiciona o resultado a um array 
    }
}

console.log(perfeitos)

*/


/*
! TENTANDO
let numero_max = Number(prompt("Digite um numero ai: "));
let perfeitos = []; // aqui vai guardar todos os números perfeitos encontrados

for (let n_test = 1; n_test <= numero_max; n_test++) {
    let somaDivisores = 0;

    for (let divisor_testado = 1; divisor_testado < n_test; divisor_testado++) {
        if (n_test % divisor_testado === 0) {
            somaDivisores += divisor_testado;
        }
    }

    if (somaDivisores === n_test) {
    
    let numeros_perfeitos_ = console.log(n_test)
    let np_arrays = numeros_perfeitos.filter(numeros => numeros > 0)
        console.log(np_arrays)
    }
}

// console.log(perfeitos) */