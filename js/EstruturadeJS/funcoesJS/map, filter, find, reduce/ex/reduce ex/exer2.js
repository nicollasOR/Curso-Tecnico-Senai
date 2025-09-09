/*

2. Dado o array `const palavras = ["JS", "é", "muito", "legal"];`, use `reduce` para juntar tudo em uma única frase.
*/


const palavras = [`JS`, `eh`, `muito`, `legal`]
const palavrasN = palavras.reduce((acumulador, palavras) => `${acumulador} ${palavras}`)
console.log(palavrasN)