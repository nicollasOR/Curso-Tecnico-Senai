/*Dado o array const numeros = [1, 2, 3, 4];, 
crie um novo array com cada número elevado ao quadrado (x ** 2). */

const numeros = [1, 2, 3, 4]
const novoNumeros = numeros.map(numero => (numero ** 2))
console.log(novoNumeros);
