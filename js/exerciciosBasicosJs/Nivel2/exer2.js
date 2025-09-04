
function encontrarMaior(qntNumeros){

    let numberHigher = Number(prompt("Insira seu primeiro numero"));
    
    for(let i = 2; i <= 3; i++){
    let number = parseInt(prompt(`Digite o  ${i}º numero:`));
    
    if(numberHigher < number)
    numberHigher = number;
    }
    
    
    return numberHigher;
    }
    
    let maiorNumero = encontrarMaior(3);
    alert("o maior numero é " + maiorNumero);