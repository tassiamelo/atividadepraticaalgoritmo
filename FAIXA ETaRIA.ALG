Algoritmo "Faixa etaria"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Tutor        : Oziel
// Descri��o    : Distribuir as idades por faixa e calcular m�dias
// Autor(a)     : T�ssia Melo
// Data atual   : 19/04/2022


Var

vetIdade: vetor[1..60] de inteiro
vetMenor: vetor[1..60] de inteiro
vetAdulto: vetor[1..60] de inteiro
vetIdoso: vetor[1..60] de inteiro
i, j, cont, cont2, cont3: inteiro
SomaMenor, SomaAdulto, SomaIdoso: inteiro
MediaMenor, MediaAdulto, MediaIdoso, MediaTotal: real

Inicio

j:= 60
cont <- 0
cont2 <- 0
cont3 <- 0
SomaMenor <- 0
SomaAdulto <- 0
SomaIdoso <- 0
MediaMenor <- 0
MediaAdulto <- 0
MediaIdoso <- 0

Escreval("Informe as idades:")
Para i de 1 at� j fa�a
     Escreva("Idade[",i,"]:")
     Leia(vetIdade[i])
Fimpara

Limpatela

Para i de 1 at� j fa�a
     Se(vetIdade[i] <= 18)ent�o
     vetMenor[i] := vetIdade[i]
     cont <- cont + 1
     SomaMenor <- SomaMenor + vetMenor[i]
     Fimse
Fimpara
        MediaMenor := (SomaMenor / cont)
        
Para i de 1 at� j fa�a
     Se(vetIdade[i] >= 19) e (vetIdade[i] <= 60)ent�o
     vetAdulto[i] := vetIdade[i]
     cont2 <- cont2 + 1
     SomaAdulto <- SomaAdulto + vetAdulto[i]
     Fimse
Fimpara
       MediaAdulto := (SomaAdulto / cont2)
       
Para i de 1 at� j fa�a
     Se(vetIdade[i] >= 61) ent�o
     vetIdoso[i] := vetIdade[i]
     cont3 <- cont3 + 1
     SomaIdoso <- SomaIdoso + vetIdoso[i]
     Fimse
Fimpara
       MediaIdoso := (SomaIdoso / cont3)
       
Escreval("A faixa et�ria de menores recebem",cont, " idades e s�o elas:")
Para i de 1 at� j fa�a
     Se (vetMenor[i] > 0) ent�o
     Escreva ("[",vetMenor[i],"]")
     Fimse
Fimpara
Escreval ("")
Escreval ("A m�dia de idade da faixa et�ria de menores � de",MediaMenor, " anos.")
Escreval ("")
Escreval("O grupo de adultos recebem",cont2, " idades e s�o elas:")
Para i de 1 at� j fa�a
     Se (vetAdulto[i] > 0) ent�o
     Escreva ("[",vetAdulto[i],"]")
     Fimse
Fimpara
Escreval ("")
Escreval ("A m�dia de idade da faixa et�ria de adultos � de",MediaAdulto, " anos.")
Escreval ("")
Escreval("O grupo de idosos recebem",cont3, " idades e s�o elas:")
Para i de 1 at� j fa�a
     Se (vetIdoso[i] > 0) ent�o
     Escreva ("[",vetIdoso[i],"]")
     Fimse
Fimpara
Escreval ("")
Escreval ("A m�dia de idade da faixa et�ria de idosos � de",MediaIdoso, " anos.")
Escreval ("")

         MediaTotal <- ((SomaMenor + SomaAdulto + SomaIdoso) / (cont + cont2 + cont3))
         
Escreval ("")
Escreval ("A m�dia de idade geral � de",MediaTotal, " anos.")
Escreval ("")

Fimalgoritmo


