Algoritmo "Faixa etaria"
// Disciplina   : [Linguagem e Lógica de Programação]
// Tutor        : Oziel
// Descrição    : Distribuir as idades por faixa e calcular médias
// Autor(a)     : Tássia Melo
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
Para i de 1 até j faça
     Escreva("Idade[",i,"]:")
     Leia(vetIdade[i])
Fimpara

Limpatela

Para i de 1 até j faça
     Se(vetIdade[i] <= 18)então
     vetMenor[i] := vetIdade[i]
     cont <- cont + 1
     SomaMenor <- SomaMenor + vetMenor[i]
     Fimse
Fimpara
        MediaMenor := (SomaMenor / cont)
        
Para i de 1 até j faça
     Se(vetIdade[i] >= 19) e (vetIdade[i] <= 60)então
     vetAdulto[i] := vetIdade[i]
     cont2 <- cont2 + 1
     SomaAdulto <- SomaAdulto + vetAdulto[i]
     Fimse
Fimpara
       MediaAdulto := (SomaAdulto / cont2)
       
Para i de 1 até j faça
     Se(vetIdade[i] >= 61) então
     vetIdoso[i] := vetIdade[i]
     cont3 <- cont3 + 1
     SomaIdoso <- SomaIdoso + vetIdoso[i]
     Fimse
Fimpara
       MediaIdoso := (SomaIdoso / cont3)
       
Escreval("A faixa etária de menores recebem",cont, " idades e são elas:")
Para i de 1 até j faça
     Se (vetMenor[i] > 0) então
     Escreva ("[",vetMenor[i],"]")
     Fimse
Fimpara
Escreval ("")
Escreval ("A média de idade da faixa etária de menores é de",MediaMenor, " anos.")
Escreval ("")
Escreval("O grupo de adultos recebem",cont2, " idades e são elas:")
Para i de 1 até j faça
     Se (vetAdulto[i] > 0) então
     Escreva ("[",vetAdulto[i],"]")
     Fimse
Fimpara
Escreval ("")
Escreval ("A média de idade da faixa etária de adultos é de",MediaAdulto, " anos.")
Escreval ("")
Escreval("O grupo de idosos recebem",cont3, " idades e são elas:")
Para i de 1 até j faça
     Se (vetIdoso[i] > 0) então
     Escreva ("[",vetIdoso[i],"]")
     Fimse
Fimpara
Escreval ("")
Escreval ("A média de idade da faixa etária de idosos é de",MediaIdoso, " anos.")
Escreval ("")

         MediaTotal <- ((SomaMenor + SomaAdulto + SomaIdoso) / (cont + cont2 + cont3))
         
Escreval ("")
Escreval ("A média de idade geral é de",MediaTotal, " anos.")
Escreval ("")

Fimalgoritmo


