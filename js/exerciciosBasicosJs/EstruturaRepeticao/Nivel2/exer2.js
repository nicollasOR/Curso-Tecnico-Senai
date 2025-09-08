let meuNumero = 56;
let usuarioNumero = Number(prompt('Digite seu numero'));

while(usuarioNumero !== meuNumero)
{
    usuarioNumero = Number(prompt('Tente novamente, numero errado'));
    if(usuarioNumero === meuNumero)
        alert('acertou garai')
    
}
alert('Muito bem, vc acertou');
    
