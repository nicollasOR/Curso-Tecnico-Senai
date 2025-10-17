using System.Collections;

namespace BackEnd;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Bem vindo ao sistema.");

        //Entrada de Dados
        Console.WriteLine("Digite seu nome");
        string nome = Console.ReadLine();

        Console.WriteLine("Digite sua idade:");
        int idade = int.Parse(Console.ReadLine());

        Console.WriteLine($"\n Ola, {nome}! Voce tem {idade} anos");

        if (idade < 18)
            Console.WriteLine("Voce eh menor de idade");
        else
            Console.WriteLine("Voce ja eh maior de idade");






        //*Menu
        Console.WriteLine("\n escolha uma opcao: ");
        Console.WriteLine("1 - Ver a tabuada de um numero: ");
        Console.WriteLine("2 - Contar ate um numero");
        Console.WriteLine("3 - Sair");
        Console.WriteLine("Digite a sua opcao");
        
         int opcao = int.Parse(Console.ReadLine());
        int i = 0;
        
        switch(opcao)
        {
            case 1:
                Console.WriteLine("Digite seu numero");
                int numero = int.Parse(Console.ReadLine());

                for (i = 0; i < numero; i++)
                {
                    Console.WriteLine($"\n {numero} x {i} = {numero} * {numero * i}");
                }
                break;
            case 2:
                Console.WriteLine("Digite seu numero");
                int numero1 = int.Parse(Console.ReadLine());
                while (i <= numero1)
                {
                    Console.WriteLine(i);
                    i++;
                }
                break;
            case 3:
                Console.WriteLine("beleza paizao, ce saiu");
                break;
        }
       
        // if (opcao == 1 || opcao == 2)
        // {
        //     Console.WriteLine("Digite seu numero");
        //     int numero = int.Parse(Console.ReadLine());
        //     if (opcao == 1)
        //     {

        //         for (i = 0; i < numero; i++)
        //         {
        //             Console.WriteLine($"\n {numero} x {i} = {numero} * {numero * i}");
        //         }
        //     }
        //     else if (opcao == 2)
        //     {
        //         while (i < numero)
        //         {
        //             Console.WriteLine(i);
        //             i++;
        //         }
        //     }

        // }
        // Console.WriteLine("Digite a quantidade de termos para a sequencia de thiagonacci");
        // int n = int.Parse(Console.ReadLine());
        // int a = 0;
        // int b = 1;
        // int c;
        // Console.WriteLine("Sequencia de ThiagoNacci: \n");

        // Console.WriteLine(a + "" + b + "");

        // for(int k = 2; k < n; k++)
        // {
        //     c = a + b;
        //     Console.WriteLine(c + "");

        //     a = b;
        //     b = c;
        // }
/*


*/        
        // int Fibonnaci = (n - 1) + (n - 2);
        // Console.WriteLine(Fibonnaci);
    }
}
