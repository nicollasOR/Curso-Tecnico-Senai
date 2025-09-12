 const listaSelect = [`pendente, andamento, concluida`]
listaSelect.forEach(function (status)
{
    console.log(listaSelect)
})

listaSelect.forEach(function(status)// - - - - - - -
{ //                                                    |
    // const option = document.createElement(`option`) //  |
    // option.value = status // - - - - - - - - - - - - - - 

    // option.textContent = status.charAt(0)
let primeiraMaiscula = status.charAt(-1).toUpperCase()

let sliceNoStatus = primeiraMaiscula + status.slice(1)
let palavraCompleta = primeiraMaiscula + sliceNoStatus
console.log(`aplicando palavra completa minuscula` + status)
console.log(`Aplicando ChartAt(0): ` + primeiraMaiscula)
 console.log(`Aplicando Slice(1): ` + sliceNoStatus)
 console.log(`Aplicando palavra Completa Maiuscula ` + palavraCompleta)
})

/*
CharAt(_) = retirar a letra da palavra especificada pela posicao
slice(_) = corta 

*/


