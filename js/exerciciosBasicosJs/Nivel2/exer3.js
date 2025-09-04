let valorProduto = Number(prompt("Digite o valor do produto"));

if(valorProduto > 100)
{
 let valorNovo = parseFloat(valorProduto * 0.9);

alert("Valor foi reajustado para  ${valorNovo.toFixed(2)}");
}
else
alert("O valor eh " + valorProduto);