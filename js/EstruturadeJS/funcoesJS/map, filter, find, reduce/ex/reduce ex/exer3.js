// 3. Dado o array `const numeros = [1, 2, 3, 4, 5];`, use `reduce` para calcular a **média**.  
const numeros = [1, 2, 3, 4, 5]
const media = numeros.reduce((acumulador, numero) => acumulador + numero, 0)
const soma = media/numeros.length
console.log(soma)