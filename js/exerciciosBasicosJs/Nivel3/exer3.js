let ano = parseInt(prompt("Digite um ano ai "));

if ((ano % 4 === 0 && ano % 100 !== 0) || (ano % 400 === 0 && ano % 100 !== 0)) 



  alert('${ano} eh um ano bissexto');
 else 
  alert('${ano} nao eh um ano bissexto');


  let ano2 = parseInt(prompt('Digita um ano ai dnv'))
  let resultado;

  ((!Boolean(ano % 4) && Boolean(ano % 100)) || !Boolean(ano % 400))
  ? resultado = 'eh bissexto'
  : resultado = 'n eh bissexto';

  alert('o ano' + ano + resultado)