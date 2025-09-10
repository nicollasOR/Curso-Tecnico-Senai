/* 
- Filtre apenas os livros com mais de 200 páginas.
- Crie um array apenas com os títulos.
- Calcule o total de páginas de todos os livros.
*/

const livros = [
    { titulo: "Dom Casmurro", paginas: 300 },
    { titulo: "O Hobbit", paginas: 295 },
    { titulo: "A Revolução dos Bichos", paginas: 112 }
  ];
const maisDuzentos  = livros.filter(paginas => paginas.paginas > 200)
console.log(maisDuzentos)
const novoArray = livros.map(livros => livros.titulo)
console.log(novoArray)
const paginasTotal = livros.reduce((acumulador, total) =>  acumulador + total.paginas, 0)
console.log(paginasTotal)



/*
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
        perfeitos.push(n_test); // adiciona ao array em vez de só mostrar
    }
}

console.log("Números perfeitos até " + numero_max + ":", perfeitos);

*/
