const carrinho = [
    { produto: "Notebook", preco: 2500 },
    { produto: "Mouse", preco: 100 },
    { produto: "Teclado", preco: 200 }
  ];
/*  Use map para criar uma lista de strings no formato "Produto: X - R$ Y".
  Use reduce para calcular o valor total da compra.
  Use find para encontrar o produto chamado "Mouse".
*/
const novaLista = carrinho.map(lista => `Produto: ${lista.produto} - R$ ${lista.preco}`)
console.log(novaLista)

const valorTotal = carrinho.reduce((acumulador, preco) => acumulador + preco.preco, 0)
console.log(valorTotal)

const encontrarProduto = carrinho.find(produto => produto.produto.startsWith(`M`))
console.log(encontrarProduto)