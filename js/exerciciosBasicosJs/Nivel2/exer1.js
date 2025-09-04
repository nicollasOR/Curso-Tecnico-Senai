let operacao = prompt("Digite sua operacao, voce pode ecolher entre +, -, / e *");

let number1 = Number(prompt("digite o numero 1"));
let number2 = Number(prompt("digite o numero 2"));
let number3 = 0;
if(operacao === '+')
{
number3 = number1 + number2;
alert(number3);
}

if(operacao === '-')
{
number3 = number1 - number2;
alert(number3);
}

if(operacao === '/')
{
number3 = number1 / number2;
alert(number3);
}


if(operacao === '*')
{
number3 = number1 * number2;
alert(number3);
}