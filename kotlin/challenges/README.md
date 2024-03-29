# Desafio: Média Final do Aluno
Faça um programa que receba a média de um aluno e imprima o seguinte:

Caso a média seja < 5 imprima "REP";
Caso a média seja >= 5 e < 7 imprima "REC";
Caso a média seja >7 imprima "APR".
Entrada
A entrada consiste em vários arquivos de teste, cada um com uma linha, que conterá o valor da média do aluno. Conforme mostrado no exemplo de entrada a seguir.

Saída
Para cada arquivo da entrada, terá um arquivo de saída. E como mencionado no Desafio, será gerado uma linha com a palavra "Reprovado" caso sua média seja < 5, "Recuperação" caso sua média seja >= 5 e < 7 e "Aprovado" caso a média seja > 7. Use o exemplo abaixo para clarear o que está sendo pedido.

Exemplos
A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

** Entrada	Saída**
5.5	    REC
8	    APR
2	    REC

▶ <a href="https://github.com/MariliseMorona/Playgrounds/tree/main/kotlin/challenges/gradeAverage.kt" target="blank" alt="Link de acesso ao código utilizado no desafio de Média Final do Aluno na linguagem Kotlin."> Go to Challenge !</a><br>

# Desafio: Data por extenso
Geronimo acredita que perde muito tempo lembrando qual número do mês representa cada um deles. Ele precisa de um programa que mude os meses do ano do calendário do celular dele para facilitar e agilizar a leitura. Ajude-o e faça um programa que, com uma determinada entrada de uma data, retorne essa data com o mês escrito por extenso.

Entrada
As entradas serão datas em formato numeral. O dia ou mês que possuirem somente um digito, terão um 0 (zero) na frente.

Saida
As saídas serão as mesmas datas da entrada porém, com o mês escrito por extenso. O mês deve ter a primeira letra em maiúsculo.

Exemplos
A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

** Entrada	    Saída**
19/10/1997	19 de Outubro de 1997
25/12/2019	25 de Dezembro de 2019
02/02/2020	02 de Fevereiro de 2020
23/03/2003	23 de Marco de 2003

▶ <a href="https://github.com/MariliseMorona/Playgrounds/tree/main/kotlin/challenges/fullDate.kt" target="blank" alt="Link de acesso ao código utilizado no desafio de Data por extenso na linguagem Kotlin."> Go to Challenge !</a><br>

Desafio
Os algarismos romanos são representados por sete símbolos diferentes: I, V, X, L, C, D e M. Cada um com seu respectivo valor: 

I : 1 
V : 5 
X : 10 
L : 50 
C : 100 
D : 500 
M : 1000 

Eles são geralmente escritos do maior para o menor. Porém, para escrevermos “4” não usamos “IIII”, mas sim “IV” porque 5 - 1 = 4.

Entrada
Você receberá uma entrada em numeral romano.
Saída
Você deverá imprimir o numeral romano convertido para um número inteiro. 

Exemplos
A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

Entrada	Saída
"V"	5
"II"	2
"MCII"	1102

# Desafio: Verificando URL segura
Descrição
Neste desafio, desenvolva uma solução que simule uma verificação de segurança em uma URL. Dessa forma, sua tarefa é implementar uma verificação que determine se uma URL é segura ou não.

Lembre-se: As URLs seguras começam com "https://" enquanto URLs não seguras começam com "http://".

Entrada
Para esse desafio, a entrada esperada é a URL que o usuário deseja verificar. A URL pode ser inserida como uma string de texto pelo usuário.

Saída
A saída esperada é o resultado da verificação de segurança da URL. Dependendo do protocolo da URL (HTTP ou HTTPS), o programa deve imprimir uma mensagem indicando se a URL é segura ou não segura.

Exemplos
A tabela abaixo apresenta exemplos com alguns dados de entrada e suas respectivas saídas esperadas. Certifique-se de testar seu programa com esses exemplos e com outros casos possíveis.

** Entrada                  Saída **
https://web.dio.me/	        URL segura
https://github.com/	        URL segura
http://gitluby.com/	        URL nao segura
www.example.com             Formato invalido

▶ <a href="https://github.com/MariliseMorona/Playgrounds/tree/main/kotlin/challenges/checkingSecurityURL.kt" target="blank" alt="Link de acesso ao código utilizado no desafio Verificando URL com Kotlin."> Go to Challenge !</a><br>

## Resolução em outras linguagens
▶ <a href="https://github.com/MariliseMorona/Playgrounds/tree/main/python/challenges/checkingSecurityURL.py" target="blank" alt="Link de acesso ao código utilizado no desafio Verificando URL com Python."> Verificando URL com Python </a><br>

▶ <a href="https://github.com/MariliseMorona/Playgrounds/tree/main/java/challenges/checkingSecurityURL.java" target="blank" alt="Link de acesso ao código utilizado no desafio Verificando URL com Java.">Verificando URL com Java</a><br>

▶ <a href="https://github.com/MariliseMorona/Playgrounds/tree/main/js/challenges/checkingSecurityURL.js" target="blank" alt="Link de acesso ao código utilizado no desafio Verificando URL com Kotlin.">Verificando URL com Javascrypt</a><br>

▶ <a href="https://github.com/MariliseMorona/Playgrounds/tree/main/c#/challenges/checkingSecurityURL.cs" target="blank" alt="Link de acesso ao código utilizado no desafio Verificando URL com C#."> Verificando URL com C#</a><br>