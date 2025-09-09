/*
1. Dado o array `const valores = [100, 200, 50, 150];`, 
calcule o total (como se fosse uma soma de compras).
*/

const valores = [100, 200, 50, 150]
const valoresN = valores.reduce((acumulador, numeros) => acumulador + numeros, 0)
console.log(valoresN)