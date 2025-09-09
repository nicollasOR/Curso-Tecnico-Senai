// /*           FILTER               */
// // Filtrar numeros > 2

// const numbers = [1, 2, 3, 4, 5, 6];

// const maioresQDois = numbers.filter(numbers => numbers > 2);

// console.log(maioresQDois);


// // Filtrar nomes agora

// let nomes = [`Igor e Mae do Guilherme`, `Representante`, `VESHE`, `Pedru`, `ShouldBe`];

// const nomesLongos = nomes.filter(nomes => nomes.length > 5);
// console.log(nomesLongos);

// // Numeros pares

// const numeros = [1,2,3,4,5,6,7,8,9,10];

// const numerosPares = numeros.filter(numeros => (numeros % 2 == 0))
// console.log(numerosPares);


// // Filtrar Objetos

// let pessoas21 = [
//     {nome: `Lucas`, idade: 15, cep: 5810-560}, //cada chave aberta == objeto
//     {nome: `Lara`, idade: 18, cep: 5810-560},
//     {nome: `Junior`, idade: 24, cep: 5810-560},
//     {nome: `Neyma`, idade: 30, cep: 5810-560},
// ]

// let adultos = pessoas21.filter(pessoas => pessoas.idade >= 18);
// console.log(adultos);


// /*  
//                         FILTER                           
// primeiro item correspondente a condicao 
//  */


// //procurar um produto pelo preco


// const produtos = [
//     {id: 1, nome: `Teclado`, preco: 100},
    
//     {id: 2, nome: `Gabinete`, preco: 500},

//     {id: 3, nome: `Mouse`, preco: 50},

//     {id: 4, nome: `Monitor`, preco: 400},
// ]


// const produtoCaro = produtos.find(produtos => produtos.preco > 400);
//  console.log(produtoCaro);


//  // Encontrar o primeiro numero maior que dez

//  const numeroszinho = 
// [
//     5,8,12,20, 3, 15
// ]

// let encontrar = numeroszinho.find(numeroszinho => numeroszinho > 10)
// console.log(encontrar);

// // Buscar um nome pela primeira letra

// let names = [`Ana`, `Marrone`, ` Marcelo`, `Alice`]
// let nameFind = names.find(nomezinho => nomezinho.startsWith(`Ma`));
// console.log(nameFind);


// /*             Map                   
        
// */

// const testandoNumbers = [ 1,2,3,4,5];
// const numerosDobrados = testandoNumbers.map(numeros => numeros * 2);

// console.log(numerosDobrados);



// // filtrando pessoas

// let pessoas2 = [
//     {nome: `Lucas`, idade: 15, cep: 4810-560}, //cada chave aberta == objeto
//     {nome: `Lara`, idade: 18, cep: 3810-560},
//     {nome: `Junior`, idade: 24, cep: 2810-560},
//     {nome: `Neyma`, idade: 30, cep: 1810-560},
// ]

// let adultos2 = pessoas2.map(pessoas => pessoas.nome  );
// console.log(adultos2);

// let mensagem = pessoas2.map( pessoa => `${pessoa.idade} e seu nome eh ${pessoa.nome}`)
// console.log(mensagem);


// const novamenteNomes = [
//     `ana`, `bruno`, `ricardo`, `carla`
// ]

// const nomesMaiusculos = novamenteNomes.map(nomeN => "Colaborador " + nomeN.toUpperCase())
// console.log(nomesMaiusculos);


// /* REDUCE 
// //! ELE REDUZ O ARRAY A UM UNICO VALOR
// */

// const numeros3 = [1, 2, 3, 4, 5];

// const soma = numeros3.reduce((acumulador, numeros3) => 
//                     acumulador + numbers, 0, 
// )

// console.log(soma);


//  Maior numero do array

// const numeros = [10, 5, 8, 20, 3];
// const maiorNumero = numeros.reduce((max, numero) =>{
//         if(numero > max)
//         {
//            return numero;
//         }
//         else{
//             return max;
//         }}, numeros[0]
//         )


//         console.log(maiorNumero);


// Contar a frequencia de palavras

const palavras = [`maca`, `banana`, `maca`, `laranja`, `banana`, `laranja`, ]

const contagem = palavras.reduce((acumulador, palavra) => 
{
    acumulador[palavra] = (acumulador[palavra] || 0) + 1
    return acumulador
}, {})
// Um objeto cujo observa quantas palavras existe na caixa (acumulador) e se nao tem nenhuma ele acrescenta uma (ele nao pega direto do array, ele pega conforme existe palavras identicas no array depois)

console.log(contagem)


const notas = [7, 8, 9, 6 , 10]

const media = notas.reduce((total, notas) => total + notas, 0 / notas.length);

console.log(media);

// uso combinado

const usuario = 
[
    {
        id: 1, nome: `Bob`, idade: 18
    },

    
    {
        id: 3, nome: `Carol`, idade: 21
    },

    {
        id: 2, nome: `Alice`, idade: 25
    },


]

//filtrar idades maiores que 21

const maioresDezoito = usuario.filter(usuario => usuario.idade > 18)
console.log(maioresDezoito)

const usuarioIdade = usuario.find(usuario => usuario.idade > 21);
console.log(usuarioIdade)

//criar um novo array com nomes de usuarios
const usuariosNomes = usuario.map( usuario => usuario.nome)

console.log(usuariosNomes)

//somar todas as idades

const idadeSomada = usuario.reduce((total, usuario) => total + usuario.idade, 0)
console.log(idadeSomada)