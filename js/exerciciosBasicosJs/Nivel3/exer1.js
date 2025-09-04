let lado1 = parseInt(prompt("Insira o 1 lado"));

let lado2 = parseInt(prompt("Insira o 2 lado"));

let lado3 = parseInt(prompt("Insira o 3 lado"));

if (lado1 === lado2 && lado2 === lado3) 
    alert("O triângulo é Equilátero");
   else if (lado1 === lado2 || lado1 === lado3 || lado2 === lado3) 
    alert("O triângulo é Isósceles");
   else 
    alert("O triângulo é Escaleno");