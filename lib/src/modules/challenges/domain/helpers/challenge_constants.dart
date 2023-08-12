class ChallengeConstants {
  ChallengeConstants._();

  static String questionOneText = """Questão 1
Inteiros positivos que são divisíveis exatamente pela soma de seus dígitos são chamados de números Harshad.
Os primeiros números Harshad são: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 18, ...
Escreva uma função que testa se um inteiro positivo n é um número Harshad.
      """;
  static String questionTwoText = """Questão 2
Escreva uma função que receba um inteiro não negativo
(segundos) como entrada e retorne a hora no formato HH:MM:SS
HH = horas, preenchidas com 2 dígitos, intervalo: 00 - 99
MM = minutos, preenchidos com 2 dígitos, intervalo: 00 - 59
SS = segundos, preenchidos com 2 dígitos, intervalo: 00 - 59
O tempo máximo nunca excede 359999 (99:59:59)
""";
  static String questionTreText = """Questão 3
Crie duas funções para codificar e depois decodificar uma string usando o Rail Fence Cipher. Essa cifra é usada para codificar uma string colocando cada caractere sucessivamente em uma diagonal ao longo de um conjunto de "trilhos". Primeiro comece movendo-se na diagonal e para baixo. Quando chegar ao fundo, inverta a direção e mova-se na diagonal e para cima até chegar ao trilho superior. Continue até chegar ao final da string. Cada "trilho" é então lido da esquerda para a direita para derivar a string codificada.
Por exemplo, a string "WEAREDISCOVEREDFLEEATONCE" pode ser representada em um sistema de três trilhos da seguinte maneira:

W       E       C       R       L       T       E
  E   R   D   S   O   E   E   F   E   A   O   C  
    A       I       V       D       E       N    

A string decodificada seria:
WECRLTEERDSOEEFEAOCAIVDEN
Escreva uma função/método que receba 2 argumentos, uma string e o número de trilhos e retorne a string codificada.
Escreva uma segunda função/método que receba 2 argumentos, uma string codificada e o número de trilhos e retorne a string decodificada.
Para codificação e decodificação, assuma o número de trilhos >= 2 e que passar uma string vazia retornará uma string vazia.
""";
}
