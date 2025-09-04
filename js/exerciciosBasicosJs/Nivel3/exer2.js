
let altura = parseFloat(prompt('Digite sua altura'));
let peso = parseFloat(prompt("digite seu peso"));
let IMC = peso / (altura * altura);
IMC = IMC.toFixed(2);

if(IMC < 18.5)
       alert('Sua classificacao eh de Magreza ');
    if(IMC >= 18.5 || IMC <= 24.9)
       alert('Sua classificacao eh de Normal');
       
    if(IMC >= 25 ||IMC<= 29.9)
       alert('Sua classificacao eh de Sobrepeso');

    if(IMC >= 30  || IMC <= 34.9)
       alert('Sua classificacao eh de Obesidade N1');

    if(IMC >= 35 || IMC >= 39.9)
       alert('Sua classificacao eh de Obesidade N2');
   
    if(IMC >= 40)
       alert('Sua classificacao eh de Obesidade N3');

