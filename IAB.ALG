Algoritmo "IAB(Instituto de Astronomia Brasileiro)"

// Descrição             : Menu interativo multifuncional.
// Autores(as)           : Bruno Bulado & João Pedro
// Data de início        : 24/04/2026

Var

   // Entarada inicial

   nome : caractere  // Nome de que acessa
   cpf : real        // CPf de quem acessa

   //

   // Informações fundamentais de alguém registrado

   nomeA : vetor [0..10] de caractere   // Nomes registrados
   cpfA : vetor [1..10] de real         // Cpf's registrados
   Status : vetor [1..10] de logico     // Status do funcionário
   frota : vetor [0..10] de caractere   // Nomes das frotas

   //

   // Variáveis para pesquisa binária

   Comeco : inteiro
   Meio   : inteiro
   Fim    : inteiro
   achou : logico
   onde : inteiro

   //

   // Variáveis gerais

   iscolha1, iscolha2, iscolha3 : inteiro    // Define a escolha do usuário

   cpfAP: real                               // Para calculo dos cpfs

   I, J, D : inteiro                         // Variáveis de controle

   resposta, respostaS : caractere

   //

   // Variáveis para missões

   AM, AJ, ALS, F : vetor [1..3] de inteiro
   // Astronautas/frotas para cada missão

   bloqueioM : logico
   bloqueioJ : logico
   bloqueioLS : logico
   bloqueioFu : logico

   BCM        : logico
   BCJ        : logico
   BCLS       : logico
   BCF        : logico

   //

   envolvimento1, envolvimento2, envolvimento3, envolvimento4 : vetor [1..10] de logico
   // Variáveis para o envolvimento funcinário com as reuniões

   // Variáveis do projeto secreto

   nave : vetor [1..3,1..3] de inteiro           // Distância das naves
   emergencia : inteiro                          // Determina a emergecia da situação
   sinal : vetor [1..3] de inteiro               // Determina a gravidade com base em cada nave
   //Linha 67
   mf : logico                                   // Determina se a missão de fuga vai acontecer

   Qf : inteiro                                  // Qual frota

   DF, CF, FF, NF : vetor [1..3] de caractere    // Informações das frotas

   //

Inicio

   aleatorio 1, 1067

   para I de 1 ate 3 faca

      para J de 1 ate 3 faca

         leia(nave[I,J])

      fimpara

   fimpara

   limpatela

   aleatorio off

   mf <- falso

   bloqueioM <- verdadeiro
   bloqueioJ <- verdadeiro
   bloqueioLS <- verdadeiro
   bloqueioFu <- verdadeiro


   cpfAP <- 12345678900

   para I de 1 ate 10 faca

      cpfA[I] <- cpfAP + I

   fimpara

   nomeA[0] <- "Vago"
   nomeA[1] <- "Bruno Bulado"
   nomeA[2] <- "Maycon Williaw"
   nomeA[3] <- "Carlinhos Maia"
   nomeA[4] <- "Gabriel Guedes"
   nomeA[5] <- "Francisco de Assis"
   nomeA[6] <- "Pedro Morais"
   nomeA[7] <- "João Pedro"
   nomeA[8] <- "Francisco Ferdinando"
   nomeA[9] <- "Augusto Maia"
   nomeA[10] <- "Henrique Vieira"


   status[1] <- verdadeiro
   status[2] <- falso
   status[3] <- verdadeiro
   status[4] <- verdadeiro
   status[5] <- verdadeiro
   status[6] <- falso
   status[7] <- verdadeiro
   status[8] <- falso
   status[9] <- verdadeiro
   status[10] <- verdadeiro

   AM[1] <- 1
   AM[2] <- 9
   AM[3] <- 0

   AJ[1] <- 3
   AJ[2] <- 5
   AJ[3] <- 10

   ALS[1] <- 4
   ALS[2] <- 7
   ALS[3] <- 0

   F[1] <- 0
   F[2] <- 0
   F[3] <- 0

   envolvimento1[1] <- verdadeiro
   envolvimento1[2] <- falso
   envolvimento1[3] <- verdadeiro
   envolvimento1[4] <- verdadeiro
   envolvimento1[5] <- falso
   envolvimento1[6] <- falso
   envolvimento1[7] <- verdadeiro
   envolvimento1[8] <- falso
   envolvimento1[9] <- verdadeiro
   envolvimento1[10] <- verdadeiro

   envolvimento2[1] <- verdadeiro
   envolvimento2[2] <- verdadeiro
   envolvimento2[3] <- falso
   envolvimento2[4] <- verdadeiro
   envolvimento2[5] <- falso
   envolvimento2[6] <- verdadeiro
   envolvimento2[7] <- verdadeiro
   envolvimento2[8] <- falso
   envolvimento2[9] <- verdadeiro
   envolvimento2[10] <- verdadeiro

   envolvimento3[1] <- verdadeiro
   envolvimento3[2] <- falso
   envolvimento3[3] <- verdadeiro
   envolvimento3[4] <- falso
   envolvimento3[5] <- falso
   envolvimento3[6] <- verdadeiro
   envolvimento3[7] <- verdadeiro
   envolvimento3[8] <- falso
   envolvimento3[9] <- falso
   envolvimento3[10] <- falso

   envolvimento4[1] <- verdadeiro
   envolvimento4[2] <- falso
   envolvimento4[3] <- falso
   envolvimento4[4] <- verdadeiro
   envolvimento4[5] <- falso
   envolvimento4[6] <- falso
   envolvimento4[7] <- verdadeiro
   envolvimento4[8] <- falso
   envolvimento4[9] <- verdadeiro
   envolvimento4[10] <- falso

   para I de 1 ate 10 faca

      frota[I] <- "nenhuma"

   fimpara

   frota[0] <- "Vago"
   frota[1] <- "Gama"
   frota[3] <- "Teta"
   frota[7] <- "Alpha"


   // entrada

   escreval ("=======================================")

   escreval("Digite o seu cpf")
   // Escreva os seguintes valores para astronauta: 12345678901 a 123456789010")
   leia (cpf)

   comeco <- 1
   achou <- falso

   // processamento 1

   Fim <- 10

   enquanto (comeco <= fim) faca

      Meio <- (Comeco + fim ) div 2
      // Verifica o meio da sequência

      se (cpf = cpfA[Meio]) entao

         achou <- verdadeiro
         onde <- Meio
         // Verifica se o o meio é o número buscado

         interrompa

      senao

         se (cpf < cpfA[meio]) entao

            Fim <- Meio - 1
            // Caso o número buscado esteja abaixo do meio

         senao

            Comeco <- Meio + 1
            // Caso no número buscado esteja acima do meio

         fimse

      fimse

   fimenquanto

   // fimprocessamento 1

   se (achou) entao

      limpatela

      escreval("Bem-vindo de volta, ", nomeA[onde])

      repita


         // Interface do funcionário


         escreval("===============================")

         escreval("0 = Sair do programa")
         escreval("1 = Futuras missões")
         escreval("2 = Informações da instituição")
         escreval("3 = Futuras reuniões")
         escreval("4 = Renda da Instituição")
         escreval("5 = Dados da concorrência")

         // escreval("6 = Projeto secreto")

         escreval("Digite o respectivo número da seção desejada :")

         escreval("===============================")

         leia (iscolha1)

         limpatela

         escolha iscolha1


            // Interface das missões



         caso 1

            limpatela

            escreval("===============================")

            escreval("0 = Sair do programa")

            se (mf) entao

               escreval("1 = Missão de fuga")

               escreval("Digite o respectivo número da missão desejada :")

               escreval("===============================")

               leia(iscolha2)

               escolha iscolha2

               caso 1

                  limpatela

                  escreval("Com o perigo eminente, mobilizaremos as nossas frotas.")
                  escreval("")
                  escreval("")
                  escreval("Frotas: ")
                  escreval("")

                  para I de 1 ate 3 faca

                     escreval(I,". ", Frota[F[I]], ".")

                     escreval("")

                     se (F[I] <> 0) entao

                        escreval("Informações da frota :")
                        escreval("")

                        escreval("Líder da frota            : ", NomeA[F[I]])
                        escreval("Data de partida           : ", DF[I])
                        escreval("Quantidade de combatentes : ", CF[I])
                        escreval("Modelo(s) da(s) nave(s)   : ", FF[I])
                        escreval("Quantidade de naves       : ", NF[I])

                        escreval("")

                     fimse

                  fimpara


                  // Aderimento (ou não) a missão


                  // Verificar se a pessoa já está inscrita na missão

                  para I de 1 ate 3 faca

                     se (F[I] = onde) entao

                        BloqueioFu <- falso

                        interrompa

                     fimse

                  fimpara

                  //

                  // Inscrição ou não na missão

                  se (bloqueioFu) entao


                     se (Frota[onde] <> "nenhuma") entao

                        escreval("=====================================")
                        escreval("")

                        escreval("Deseja adicionar sua frota? (s/n)")
                        leia (resposta)

                        limpatela

                        se (resposta = "s") entao

                           // Inscrição na missão

                           para I de 1 ate 3 faca

                              se F[I] = 0 entao

                                 F[I] <- onde
                                 QF <- I

                                 interrompa

                              fimse

                           fimpara

                           //

                           // Registro dos dados da frota

                           limpatela

                           escreval("Digite o momento de partida da frota :")
                           leia(DF[Qf])

                           limpatela

                           escreval("Digite a quantidade de combatentes da frota :")
                           leia(CF[Qf])

                           limpatela

                           escreval("Digite o modelo das naves da frota (junto unido por virgula): ")
                           leia(FF[Qf])

                           limpatela

                           escreval("Digite quantas naves estão presentes na frota : ")
                           leia(NF[Qf])

                           //

                           limpatela

                           escreval("Entendido, ", nomeA[onde],". Sua frota foi adicionada à missão.")

                        senao

                           escreval("Entendido, ", nomeA[onde],". Sua frota não se juntou.")

                        fimse

                     fimse

                  fimse

                  //


                  escreval("=====================================")

                  // leia (onde)

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")

                  leia (resposta)

                  limpatela

               fimescolha

            senao

               escreval("1 = Missão para solo marciano")
               escreval("2 = Missão para lua de Júpiter")
               escreval("3 = Missão para superfície do Sol")
               escreval("4 = Missão para lua de Saturno")

               escreval("Digite o respectivo número da missão desejada :")

               escreval("===============================")

               leia(iscolha2)

               escolha iscolha2


                  // Missão para Marte


               caso 1

                  limpatela

                  escreval("Data prevista para lançamento: 22/03/2027")
                  escreval("Data prevista para chegada: 30/10/2027")
                  escreval("")
                  escreval("Andamento da missão: Em preparação")
                  escreval("")
                  escreval("Nome dos astronautas: ")
                  escreval("")
                  escreval("1.", nomeA[AM[1]])
                  escreval("2.", nomeA[AM[2]])
                  escreval("3.", nomeA[AM[3]])
                  escreval("")


                  // Aderimento (ou não) a missão


                  // Verificar se a pessoa já está inscrita na missão

                  para I de 1 ate 3 faca

                     se (AM[I] = onde) entao

                        BloqueioM <- falso

                        interrompa

                     fimse

                  fimpara

                  //

                  // Inscrição ou não na missão

                  se (bloqueioM) entao

                     se (Status[onde]) entao

                        para I de 1 ate 3 faca

                           BCM <- AM[I] = 0

                        fimpara

                        se (BCM) entao

                           escreval("=====================================")
                           escreval("")

                           escreval("Deseja se juntar a missão? (s/n)")
                           leia (resposta)

                           limpatela

                           se (resposta = "s") entao

                              escreval("Entendido, ", nomeA[onde],". Você foi adicionado a missão.")

                              para I de 1 ate 3 faca

                                 se AM[I] = 0 entao

                                    AM[I] <- onde
                                    interrompa

                                 fimse

                              fimpara

                           senao

                              escreval("Entendido, ", nomeA[onde],". Você não se juntou.")

                           fimse

                        fimse

                     fimse

                  fimse

                  //


                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")

                  leia (resposta)

                  limpatela


                  // Fim da missão para Marte

               caso 2


                  // Missão para lua de Júpter


                  limpatela

                  escreval("Data prevista para lançamento: 21/08/2033")
                  escreval("Data prevista para chegada: 02/09/2035")
                  escreval("")
                  escreval("Andamento da missão: Em desenvolvimento")
                  escreval("")
                  escreval("Nome dos astronautas: ")
                  escreval("1.", nomeA[AJ[1]])
                  escreval("2.", nomeA[AJ[2]])
                  escreval("3.", nomeA[AJ[3]])
                  escreval("")

                  // Verificar se a pessoa está inscrita na missão

                  para I de 1 ate 3 faca

                     se (AJ[I] = onde) entao

                        BloqueioJ <- falso

                        interrompa

                     fimse

                  fimpara

                  se (bloqueioJ) entao

                     se (Status[onde]) entao

                        para I de 1 ate 3 faca

                           BCJ <- AJ[I] = 0

                        fimpara

                        se (BCJ) entao

                           escreval("=====================================")
                           escreval("")

                           escreval("Deseja se juntar a missão? (s/n)")
                           leia (resposta)

                           limpatela

                           se (resposta = "s") entao

                              escreval("Entendido, ", nomeA[onde],". Você foi adicionado a missão.")

                              para I de 1 ate 3 faca

                                 se AJ[I] = 0 entao

                                    AJ[I] <- onde
                                    interrompa

                                 fimse

                              fimpara

                           senao

                              escreval("Entendido, ", nomeA[onde],". Você não se juntou.")

                           fimse

                        fimse

                     fimse

                  fimse

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               caso 3

                  limpatela

                  escreval("Data prevista para lançamento: 12/08/2037")
                  escreval("Data prevista para chegada: 23/09/2039")
                  escreval("")
                  escreval("Andamento da missão: Desenvolvendo protótipos")
                  escreval("")
                  escreval("Modelo do robô utilizado: ")
                  escreval("1. YBU-19")
                  escreval("")

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               caso 4

                  limpatela

                  escreval("Data prevista para lanãmento: 06/07/2047")
                  escreval("Data prevista para chegada: 07/06/2054")
                  escreval("")
                  escreval("Andamento da missão: A confirmar")
                  escreval("")
                  escreval("Modelo do robô utilizado:")
                  escreval("1.AUR-67")
                  escreval("")
                  escreval("Nome dos astronautas:")
                  escreval("1.",nomeA[ALS[1]])
                  escreval("2.",nomeA[ALS[2]])
                  escreval("3.",nomeA[ALS[3]])
                  escreval("")

                  para I de 1 ate 3 faca

                     se ALS[I] = onde entao

                        BloqueioLS <- falso

                        interrompa

                     fimse

                  fimpara

                  se (bloqueioLS) entao

                     se (Status[onde]) entao

                        para I de 1 ate 3 faca

                           BCLS <- ALS[I] = 0

                        fimpara

                        se (BCLS) entao

                           escreval("=====================================")
                           escreval("")

                           escreval("Deseja se juntar a missão? (s/n)")
                           leia (resposta)

                           limpatela

                           se (resposta = "s") entao

                              escreval("Entendido, ", nomeA[onde],". Você foi adicionado a missão.")

                              para I de 1 ate 3 faca

                                 se ALS[I] = 0 entao

                                    ALS[I] <- onde
                                    interrompa

                                 fimse

                              fimpara

                           senao

                              escreval("Entendido, ", nomeA[onde],". Você não se juntou.")

                           fimse

                        fimse

                     fimse

                  fimse

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               fimescolha

            fimse

         caso 2

            // Informações da instituição

            limpatela

            escreval("=====================================")

            escreval("1 = Sistema Solar")
            escreval("2 = Galáxia")
            escreval("3 = Universo")

            escreval("=====================================")

            escreval("Digite o respectivo número da seção desejada")
            leia(iscolha2)

            escolha iscolha2

            caso 1

               limpatela

               escreval("=====================================")

               escreval("1 = Ângulo dos planetas")
               escreval("2 = Força gravitacional de cada planeta")
               escreval("3 = Distância do Sol em UA, km, m")
               escreval("4 = Recursos Valiosos")

               escreval("=====================================")

               escreval("Digite o respectivo número da seção desejada")
               leia(iscolha3)

               escolha iscolha3

               caso 1

                  limpatela

                  escreval("=====================================")

                  escreval("Mercúrio = 0,01°")
                  escreval("Vênus    = 177,3°")
                  escreval("Terra    = 23,26°")
                  escreval("Marte    = 25,19°")
                  escreval("Júpter   = 3,13°")
                  escreval("Saturno  = 26,73")
                  escreval("Urano    = 97,77°")
                  escreval("Netuno   = 28,32°")

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               caso 2

                  limpatela

                  escreval("=====================================")

                  escreval("Mercúrio = 3,7 m/s²")
                  escreval("Vênus    = 8,9 m/s²")
                  escreval("Terra    = 9,8 m/s²")
                  escreval("Marte    = 3,7 m/s²")
                  escreval("Júpter   = 24,8 m/s²")
                  escreval("Saturno  = 10,4 m/s²")
                  escreval("Urano    = 8,7 m/s²")
                  escreval("Netuno   = 11,2 m/s²")

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               caso 3

                  limpatela

                  escreval("=====================================")

                  escreval("Mercúrio :")
                  escreval(" 0,39 UA, 57,9 milhões de km, 5,79 x 10^10 m")
                  escreval("Vênus    :")
                  escreval(" 0,72 UA, 108,2 milhões de km, 1,08 x 10^11 m")
                  escreval("Terra    :")
                  escreval(" 1 UA, 149,6 milhões de km, 1,49 x 10^11 m")
                  escreval("Marte    :")
                  escreval(" 1,52 UA, 227,9 milhões  de km, 2,28 x 10^11 m")
                  escreval("Júpter   :")
                  escreval(" 5,20 UA, 778,5 milhões de km, 7,78 x 10^11 m")
                  escreval("Saturno  :")
                  escreval(" 9,58 UA, 1,43 bilhões de km, 1,43 x 10^12 m")
                  escreval("Urano    :")
                  escreval(" 19,20 UA, 2,87 bilhões de km, 2,87 x 10^12 m")
                  escreval("Netuno   :")
                  escreval(" 30,05 UA, 4,50 bilhões de km, 4,50 x 10^12 m")

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               caso 4

                  limpatela

                  escreval("=====================================")

                  escreval("Mercúrio = Ferro e Níquel; atualmente sem missões programadas")
                  escreval("Vênus    = Ácido sulfúrico e dióxido de carbono; missão em discurssão")
                  escreval("Marte    = Água congelada, óxido de ferro, silícioe magnésio; missão em preparamento")
                  escreval("Júpter   = Hélio -3; missão em preparamento")
                  escreval("Saturno  = Hidrogênio, Hélio e Luas; missão em preparamento")
                  escreval("Urano    = Possível crosta de diamantes; sem missões programadas")
                  escreval("Netuno   = Diamantes e cristais de carbono sólidos; sem missões programadas")

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               fimescolha

            caso 2

               limpatela

               escreval("=====================================")

               escreval("1 = Via Láctea")
               escreval("2 = Andrômeda")
               escreval("3 = Galáxia do Sombrero")
               escreval("4 = Galáxia do Redemoinho")

               escreval("=====================================")

               escreval("Digite o respectivo número da seção desejada")
               leia(iscolha3)

               escolha iscolha3

               caso 1

                  limpatela

                  escreval("=====================================")

                  escreval("Diâmetro: 100.000 anos-luz")
                  escreval("Número de estrelas: 200 a 400 bilhões")
                  escreval("Distância da Terra: 0 anos-luz")

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               caso 2

                  limpatela

                  escreval("=====================================")

                  escreval("Diâmetro: 220.000 anos-luz")
                  escreval("Número de estrelas: 1 trilhão")
                  escreval("Distância da Terra: 2,5 milhões de anos-luz")

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               caso 3

                  limpatela

                  escreval("=====================================")

                  escreval("Diâmetro: 50.000 anos-luz")
                  escreval("Número de estrelas: 800 bilhões")
                  escreval("Distância da Terra: 29 milhões de anos-luz")

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               caso 4

                  limpatela

                  escreval("=====================================")

                  escreval("Diâmetro: 60.000 anos-luz")
                  escreval("Número de estrelas: 100 bilhões")
                  escreval("Distância da Terra: 27 milhões de anos-luz")

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               fimescolha

            caso 3

               limpatela

               escreval("=====================================")

               escreval("1 = Idade do Universo")
               escreval("2 = Composição do Universo")
               escreval("3 = Expansão do Universo")
               escreval("4 = Teorias sobre o Universo")

               escreval("=====================================")

               escreval("Digite o respectivo número da seção desejada")
               leia(iscolha3)

               escolha iscolha3

               caso 1

                  limpatela

                  escreval("=====================================")

                  escreval("Idade do Universo: 13,8 bilhões de anos")

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               caso 2

                  limpatela

                  escreval("=====================================")

                  escreval("Composição do Universo: 68% energia escura, 27% matéria escura, 5% matéria bariônica")

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               caso 3

                  limpatela

                  escreval("=====================================")

                  escreval("Expansão do Universo: O universo está se expandindo a uma taxa de aproximadamente 73 km/s por megaparsec")

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               caso 4

                  limpatela

                  escreval("=====================================")

                  escreval("Teorias sobre o Universo: Big Bang, Multiverso, Teoria das Cordas, etc.")

                  escreval("=====================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

                  limpatela

               fimescolha

            fimescolha

         caso 3

            limpatela

            se (envolvimento1[onde]) entao

               escreval("======================================")

               limpatela

               escreval("Você irá em nossa sexta reunião interna")

               escreval("Data prevista para a reunião: 09/02/2026")
               escreval("Local da reunião: Salvador, BA")
               escreval("Pauta da reunião: Novo site da empresa.")
               escreval("Número de participantes: 6")

               escreval("======================================")

               escreval("Digite qualquer coisa para continuar...")
               leia (resposta)

               limpatela

            fimse



            se (envolvimento2[onde]) entao

               escreval("=======================================")

               limpatela

               escreval("Você irá em nossa sétima reunião interna")

               escreval("Data prevista para a reunião: 12/08/2026")
               escreval("Local da reunião: Xique Xique, BA")
               escreval("Pauta da reunião: Onde construiremos nossa próxima sede.")
               escreval("Número de participantes: 7")

               escreval("======================================")

               escreval("Digite qualquer coisa para continuar...")
               leia (resposta)

               limpatela

            fimse

            se (envolvimento3[onde]) entao

               escreval("=======================================")

               limpatela

               escreval("Você irá em nossa oitava reunião interna")

               escreval("Data prevista para a reunião: 09/02/2027")
               escreval("Local da reunião: Contagem, MG")
               escreval("Pauta da reunião: Discurssão sobre vida alienígena.")
               escreval("Número de participantes: 4")

               escreval("======================================")

               escreval("Digite qualquer coisa para continuar...")
               leia (resposta)

               limpatela

            fimse

            se (envolvimento4[onde]) entao

               escreval("=======================================")

               limpatela

               escreval("Você irá nos representar na reunião com a AURI76")

               escreval("Data prevista para a reunião: 12/08/2029")
               escreval("Local da reunião: Brasília, DF")
               escreval("Pauta da reunião: Parceria para exploração de asteroides próximos à Terra")

               escreval("=======================================")

               escreval("Digite qualquer coisa para continuar...")
               leia (resposta)

               limpatela

            fimse

            escreval("Você não tem mais reuniões agendadas no momento.")

            escreval("=======================================")

            escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
            leia (resposta)

         caso 4

            escreval("===============================================")

            escreval("1 = Renda mensal em 2026")
            escreval("2 = Renda anual em toda a história da instituição")
            escreval("3 = Renda anual prevista para os próximos 5 anos")

            escreval("===============================================")

            escreval("Digite o respectivo número da seção desejada")

            leia (iscolha2)

            escolha iscolha2

            caso 1

               limpatela

               escreval("================================================")
               escreval("")
               escreval(" 1B                      |                             ")
               escreval(" 650M            |   .   |                             ")
               escreval(" 500M    |       |   |   |                             ")
               escreval(" 300M    |   |   |   |   |   .                         ")
               escreval("       ------------------------------------------------")
               escreval("        Jan Fev Mar Abr Mai Jun Jul Ago Set Out Nov Dez")

               escreval("===============================================")

               escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
               leia (resposta)

               limpatela

            caso 2

               limpatela

               escreval("================================================")
               escreval("")
               escreval(" 20B                         |               .                  ")
               escreval(" 15B               |    .    |               |                  ")
               escreval(" 10B      |        |    |    |               |    |    .        ")
               escreval(" 5B       |   |    |    |    |    .     |    |    |    |        ")
               escreval(" 2B       |   |    |    |    |    |     |    |    |    |        ")
               escreval("        --------------------------------------------------------")
               escreval("        2016 2017 2018 2019 2020 2021 2022 2023 2024 2025       ")

               escreval("===============================================")

               escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
               leia (resposta)

            caso 3

               limpatela

               escreval("================================================")
               escreval("")
               escreval(" 30B                         |    |                             ")
               escreval(" 25B               |    .    |    |          .                  ")
               escreval(" 20B      |        |    |    |    |     |    |    |    .        ")
               escreval(" 15B      |   |    |    |    |    |     |    |    |    |        ")
               escreval(" 10B      |   |    |    |    |    |     |    |    |    |        ")
               escreval(" 2B       |   |    |    |    |    |     |    |    |    |        ")
               escreval("        --------------------------------------------------------")
               escreval("        2026 2027 2028 2029 2030 2031 2032 2033 2034 2035       ")

               escreval("===============================================")

               escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
               leia (resposta)

            fimescolha

         caso 5

            limpatela

            escreval("======================================")

            escreval("1 = NASA")
            escreval("2 = Spacex")
            escreval("3 = AEB")

            escreval("======================================")

            escreval("Digite o respectivo número da seção desejada")
            leia(iscolha1)

            escolha(iscolha1)

            caso 1

               limpatela

               escreval("======================================")

               escreval("Qual dado da NASA você quer saber?")

               escreval("1 = Renda de 2026.")
               escreval("2 = Futuras missões.")
               escreval("3 = Parcerias")

               escreval("======================================")

               escreval("Digite o respectivo número da seção desejada")
               leia(iscolha2)

               escolha(iscolha2)

               caso 1

                  limpatela

                  escreval("================================================")
                  escreval("")
                  escreval(" 3B                      |                             ")
                  escreval(" 2B      .       |   .   |                             ")
                  escreval(" 1B      |   |   |   |   |   .                         ")
                  escreval(" 500M    |   |   |   |   |   |                         ")
                  escreval("       ------------------------------------------------")
                  escreval("        Jan Fev Mar Abr Mai Jun Jul Ago Set Out Nov Dez")

                  escreval("===============================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

               caso 2

                  limpatela

                  escreval("===============================================")

                  escreval("1 = Missão para Marte")
                  escreval("2 = Missão para Cinturão de Asteróides")
                  escreval("3 = Missão para Netuno")

                  escreval("===============================================")

                  escreval("Digite o respectivo número da seção desejada")
                  leia(iscolha3)

                  escolha(iscolha3)

                  caso 1

                     limpatela

                     escreval("Data prevista para lançamento: 21/08/2033")
                     escreval("Data prevista para chegada: 02/09/2034")
                     escreval("")
                     escreval("Andamento da missão: Preparação da divulgação")
                     escreval("")
                     escreval("Nome dos astronautas: ")
                     escreval("1. Não se sabe até o momento.")
                     escreval("2. Não se sabe até o momento.")
                     escreval("3. Não se sabe até o momento.")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)


                  caso 2

                     limpatela

                     escreval("Data prevista para lançamento: 21/08/2046")
                     escreval("Data prevista para chegada: 02/09/2048")
                     escreval("")
                     escreval("Andamento da missão: Em andamento")
                     escreval("")
                     escreval("Nome dos astronautas/robô: ")
                     escreval("1. Não se sabe até o momento.")
                     escreval("2. Não se sabe até o momento.")
                     escreval("3. Não se sabe até o momento.")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  caso 3

                     limpatela

                     escreval("Data prevista para lançamento: 21/08/2076")
                     escreval("Data prevista para chegada: 02/09/2082")
                     escreval("")
                     escreval("Andamento da missão: Em decisão")
                     escreval("")
                     escreval("Nome dos astronautas/robôs: ")
                     escreval("1. Não se sabe até o momento.")
                     escreval("2. Não se sabe até o momento.")
                     escreval("3. Não se sabe até o momento.")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  fimescolha

               caso 3

                  limpatela

                  escreval("===============================================")

                  escreval("1 = Parceira de chocolate")
                  escreval("2 = Parceira de foguetes")
                  escreval("3 = Acordo de propagandas")

                  escreval("===============================================")

                  escreval("Digite o respectivo número da seção desejada")
                  leia(iscolha3)

                  escolha(iscolha3)

                  caso 1

                     limpatela

                     escreval("Data de início da parceira: 21/08/2023")
                     escreval("Data de término da parceria: 02/09/2030")
                     escreval("")
                     escreval("Andamento da parceria: Acontecendo")
                     escreval("")
                     escreval("Beneficíos da parceria: ")
                     escreval("1. Renda aumentada")
                     escreval("2. Chocolate para todos os funcionários (Menos o Bruno)")
                     escreval("3. Paz momentanêa.")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  caso 2

                     limpatela

                     escreval("Data de início da parceira: 21/08/2025")
                     escreval("Data de término da parceria: 02/09/2036")
                     escreval("")
                     escreval("Andamento da parceria: Acontecendo")
                     escreval("")
                     escreval("Beneficíos da parceria: ")
                     escreval("1. Renda aumentada")
                     escreval("2. Maior divulgação da IAB")
                     escreval("3. Maior faciidade na construção de foguetes")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  caso 3

                     limpatela

                     escreval("Data de início da parceira: 21/08/2027")
                     escreval("Data de término da parceria: 02/09/2032")
                     escreval("")
                     escreval("Andamento da parceria: Ainda no papel")
                     escreval("")
                     escreval("Beneficíos da parceria: ")
                     escreval("1. Renda aumentada")
                     escreval("2. Maior divulgação da IAB")
                     escreval("3. Crescimento exponencial da IAB")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  fimescolha

               caso 4

                  limpatela

                  escreval("======================================")

                  escreval("== Aviso : conteúdo sigiloso ==")
                  escreval("== Optar por tentar acessar não tem volta ==")

                  escreval("")

                  escreval("0 = Sair do programa")
                  escreval("1 = Voltar ao menu")

                  escreval("")

                  escreval("Senha = acessar as informações (3 tentativas)")

                  escreval("======================================")

                  escreval("Digite o número da seção desejada ou a senha :")
                  leia(resposta)

                  escolha resposta

                  caso "0"

                  caso "1"

                  outrocaso

                     se (resposta <> "0000") entao

                        para I de 1 ate 2 faca

                           limpatela

                           escreval("======================================")

                           escreval("Você tem mais", (2-I+1), " tentativas.")

                           escreval("======================================")

                           escreval("Digite a senha :")
                           leia(resposta)

                           se (resposta = "0000") entao

                              interrompa

                           fimse

                        fimpara

                     fimse

                     se (resposta = "0000") entao

                        limpatela

                        escreval("Andamento do projeto secreto na NASA:")

                        escreval("Descoberta de possíveis novos sinais")

                        escreval("======================================")

                        escreval("Preparação da missão para a batalha final:")
                        escreval("Possivelmente em andamento")

                        escreval("======================================")

                        escreval("Está com o projeto mais avançado que a IAB?")
                        escreval("Possivelmente superior")

                        escreval("======================================")

                        escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                        leia (resposta)

                     fimse

                  fimescolha
               fimescolha

            caso 2

               limpatela

               escreval("======================================")

               escreval("Qual dado da Spacex você quer saber?")

               escreval("1 = Renda de 2026.")
               escreval("2 = Futuras missões.")
               escreval("3 = Parcerias")

               escreval("======================================")

               escreval("Digite o respectivo número da seção desejada")
               leia(iscolha2)

               escolha(iscolha2)

               caso 1

                  limpatela

                  escreval("================================================")
                  escreval("")
                  escreval(" 3B                      |                             ")
                  escreval(" 2B                  .   |                             ")
                  escreval(" 1B      |       |   |   |   .                         ")
                  escreval(" 500M    |   |   |   |   |   |                         ")
                  escreval("       ------------------------------------------------")
                  escreval("        Jan Fev Mar Abr Mai Jun Jul Ago Set Out Nov Dez")

                  escreval("===============================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

               caso 2

                  limpatela

                  escreval("===============================================")

                  escreval("1 = Missão do foguete de ré")
                  escreval("2 = Missão de colonização de Marte")
                  escreval("3 = Missão para nova ISS")

                  escreval("===============================================")

                  escreval("Digite o respectivo número da seção desejada")
                  leia(iscolha3)

                  escolha(iscolha3)

                  caso 1

                     limpatela

                     escreval("Data início de construção: 21/08/2023")
                     escreval("Data de missão concluída: 02/09/2026")
                     escreval("")
                     escreval("Andamento da missão: Concluída")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  caso 2

                     limpatela

                     escreval("Data prevista para lançamento: 21/08/2039")
                     escreval("Data prevista para chegada: 02/09/2040")
                     escreval("")
                     escreval("Andamento da missão: Em andamento")
                     escreval("")
                     escreval("Nome dos astronautas/robô: ")
                     escreval("1. Não se sabe até o momento.")
                     escreval("2. Não se sabe até o momento.")
                     escreval("3. Não se sabe até o momento.")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  caso 3

                     limpatela

                     escreval("Data prevista para lançamento: 21/08/2034")
                     escreval("Data prevista para chegada: 02/09/2043")
                     escreval("")
                     escreval("Andamento da missão: Em andamento")
                     escreval("")
                     escreval("Nome dos astronautas/robôs construtores: ")
                     escreval("1. Não se sabe até o momento.")
                     escreval("2. Não se sabe até o momento.")
                     escreval("3. Não se sabe até o momento.")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  fimescolha

               caso 3

                  limpatela

                  escreval("===============================================")

                  escreval("1 = Parceira de Computadores")
                  escreval("2 = Parceira de Fubá")
                  escreval("3 = Parceria de Petróleo")

                  escreval("===============================================")

                  escreval("Digite o respectivo número da seção desejada")
                  leia(iscolha3)

                  escolha(iscolha3)

                  caso 1

                     limpatela

                     escreval("Data de início da parceira: 21/08/2025")
                     escreval("Data de término da parceria: 02/09/2034")
                     escreval("")
                     escreval("Andamento da parceria: Acontecendo")
                     escreval("")
                     escreval("Beneficíos da parceria: ")
                     escreval("1. Renda aumentada")
                     escreval("2. Maior quantidade de computadores")
                     escreval("3. Paz momentanêa.")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  caso 2

                     limpatela

                     escreval("Data de início da parceira: 21/08/2023")
                     escreval("Data de término da parceria: 02/09/2029")
                     escreval("")
                     escreval("Andamento da parceria: Acontecendo")
                     escreval("")
                     escreval("Beneficíos da parceria: ")
                     escreval("1. Fubá aumentado")
                     escreval("2. Fubá para todos os funcionários (Menos o Bruno)")
                     escreval("3. Maior processamento de dados")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  caso 3

                     limpatela

                     escreval("Data de início da parceira: 21/04/2025")
                     escreval("Data de término da parceria: 02/07/2039")
                     escreval("")
                     escreval("Andamento da parceria: Acontecendo")
                     escreval("")
                     escreval("Beneficíos da parceria: ")
                     escreval("1. Renda aumentada")
                     escreval("2. Maior quantidade de combustível para missões")
                     escreval("3. Maior quantidade de foguetes para produção")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  fimescolha

               caso 4

                  limpatela

                  escreval("======================================")

                  escreval("== Aviso : conteúdo sigiloso ==")
                  escreval("== Optar por tentar acessar não tem volta ==")

                  escreval("")

                  escreval("0 = Sair do programa")
                  escreval("1 = Voltar ao menu")

                  escreval("")

                  escreval("Senha = acessar as informações (3 tentativas)")

                  escreval("======================================")

                  escreval("Digite o número da seção desejada ou a senha :")
                  leia(resposta)

                  escolha resposta

                  caso "0"

                  caso "1"

                  outrocaso

                     se (resposta <> "0000") entao

                        para I de 1 ate 2 faca

                           limpatela

                           escreval("======================================")

                           escreval("Você tem mais", (2-I+1), " tentativas.")

                           escreval("======================================")

                           escreval("Digite a senha :")
                           leia(resposta)

                           se (resposta = "0000") entao

                              interrompa

                           fimse

                        fimpara

                     fimse

                     se (resposta = "0000") entao

                        limpatela

                        escreval("Andamento do projeto secreto na Spacex:")

                        escreval("======================================")

                        escreval("Descoberta de possíveis novos sinais")

                        escreval("======================================")

                        escreval("Preparação da missão para a batalha final:")
                        escreval("Possivelmente em andamento")

                        escreval("======================================")

                        escreval("Está com o projeto mais avançado que a IAB?")
                        escreval("Possivelmente inferior")

                        escreval("======================================")

                        escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                        leia (resposta)

                     fimse

                  fimescolha
               fimescolha

            caso 3

               limpatela

               escreval("======================================")

               escreval("Qual dado da AEB você quer saber?")

               escreval("1 = Renda de 2026.")
               escreval("2 = Futuras missões.")
               escreval("3 = Parcerias")

               escreval("======================================")

               escreval("Digite o respectivo número da seção desejada")
               leia(iscolha2)

               escolha(iscolha2)

               caso 1

                  limpatela

                  escreval("================================================")
                  escreval("")
                  escreval(" 4B                      |                             ")
                  escreval(" 2B              .   |   |                             ")
                  escreval(" 1B      .       |   |   |   .                         ")
                  escreval(" 500M    |   |   |   |   |   |                         ")
                  escreval("       ------------------------------------------------")
                  escreval("        Jan Fev Mar Abr Mai Jun Jul Ago Set Out Nov Dez")

                  escreval("===============================================")

                  escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                  leia (resposta)

               caso 2

                  limpatela

                  escreval("===============================================")

                  escreval("1 = Lançamento de satélite")
                  escreval("2 = Construção de um super computador")
                  escreval("3 = Criação de foguete para tentativas")

                  escreval("===============================================")

                  escreval("Digite o respectivo número da seção desejada")
                  escolha(iscolha3)

                  caso 1

                     limpatela

                     escreval("Data de previsão de construção: 21/08/2025")
                     escreval("Data de lançamento: 02/06/2026")
                     escreval("")
                     escreval("Andamento da missão: Concluída")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  caso 3

                     limpatela

                     escreval("Data prevista de construção: 21/08/2028")
                     escreval("Data prevista de término: 02/09/2029")
                     escreval("")
                     escreval("Andamento da missão: Em andamento")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  caso 3

                     limpatela

                     escreval("Data prevista para lançamento: 21/08/2030")
                     escreval("Data prevista para chegada: 02/09/2032")
                     escreval("")
                     escreval("Andamento da missão: Em andamento")
                     escreval("")
                     escreval("Nome dos astronautas: ")
                     escreval("1. Não se sabe até o momento.")
                     escreval("2. Não se sabe até o momento.")
                     escreval("3. Não se sabe até o momento.")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  fimescolha

               caso 3

                  limpatela

                  escreval("===============================================")

                  escreval("1 = Criação de escolas de astronomia")
                  escreval("2 = Parceria de terreno")
                  escreval("3 = Criação de programas")

                  escreval("===============================================")

                  escreval("Digite o respectivo número da seção desejada")
                  leia(iscolha3)

                  limpatela

                  escolha(iscolha3)

                  caso 1

                     limpatela

                     escreval("Data de início da parceira: 21/08/2010")
                     escreval("Data de término da parceria: 02/09/2019")
                     escreval("")
                     escreval("Andamento da parceria: Terminada")
                     escreval("")
                     escreval("Beneficíos da parceria: ")
                     escreval("1. Maiores investimentos em astronomia")
                     escreval("2. Mais escolas para um Brasil melhor")
                     escreval("3. Reforçamento dos próximos funcionários")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  caso 2

                     limpatela

                     escreval("Data de início da parceira: 21/08/2024")
                     escreval("Data de término da parceria: 02/09/2031")
                     escreval("")
                     escreval("Andamento da parceria: Acontecendo")
                     escreval("")
                     escreval("Beneficíos da parceria: ")
                     escreval("1. Mais terreno para construção")
                     escreval("2. Mais espaços para novos projetos")
                     escreval("3. Maior crescimento da IAB")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  caso 3

                     limpatela

                     escreval("Data de início da parceira: 21/04/2025")
                     escreval("Data de término da parceria: 02/07/2029")
                     escreval("")
                     escreval("Andamento da parceria: Acontecendo")
                     escreval("")
                     escreval("Beneficíos da parceria: ")
                     escreval("1. Renda aumentada")
                     escreval("2. Maior nível das missões")
                     escreval("3. Maior complexidade das missões")
                     escreval("")

                     escreval("===============================================")

                     escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                     leia (resposta)

                  fimescolha

               caso 4

                  limpatela

                  escreval("======================================")

                  escreval("== Aviso : conteúdo sigiloso ==")
                  escreval("== Optar por tentar acessar não tem volta ==")

                  escreval("")

                  escreval("0 = Sair do programa")
                  escreval("1 = Voltar ao menu")

                  escreval("")

                  escreval("Senha = acessar as informações (3 tentativas)")

                  escreval("======================================")

                  escreval("Digite o número da seção desejada ou a senha :")
                  leia(resposta)

                  escolha resposta

                  caso "0"

                  caso "1"

                  outrocaso

                     se (resposta <> "0000") entao

                        para I de 1 ate 2 faca

                           limpatela

                           escreval("======================================")

                           escreval("Você tem mais", (2-I+1), " tentativas.")

                           escreval("======================================")

                           escreval("Digite a senha :")
                           leia(resposta)

                           se (resposta = "0000") entao

                              interrompa

                           fimse

                        fimpara

                     fimse

                     se (resposta = "0000") entao

                        limpatela

                        escreval("Andamento do projeto secreto na AEB:")

                        escreval("======================================")

                        escreval("Nenhuma descoberta")

                        escreval("======================================")

                        escreval("Preparação da missão para a batalha final:")
                        escreval("Não está em andamento")

                        escreval("======================================")

                        escreval("Está com o projeto mais avançado que a IAB?")
                        escreval("Inferior")

                        escreval("======================================")

                        escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
                        leia (resposta)

                     senao

                        interrompa

                     fimse

                  fimescolha
               fimescolha
            fimescolha

         caso 6

            escreval("======================================")

            escreval("== Aviso : conteúdo sigiloso ==")
            escreval("== Optar por tentar acessar não tem volta ==")

            escreval("")

            escreval("0 = Sair do programa")
            escreval("1 = Voltar ao menu")

            escreval("")

            escreval("Senha = acessar as informações (3 tentativas)")

            escreval("======================================")

            escreval("Digite o número da seção desejada ou a senha :")
            leia(resposta)

            escolha resposta

            caso "0"

            caso "1"

            outrocaso

               se (resposta <> "0000") entao

                  para I de 1 ate 2 faca

                     limpatela

                     escreval("======================================")

                     escreval("Você tem mais", (2-I+1), " tentativas.")

                     escreval("======================================")

                     escreval("Digite a senha :")
                     leia(resposta)

                     se (resposta = "0000") entao

                        interrompa

                     fimse

                  fimpara

               fimse

               se (resposta = "0000") entao

                  limpatela

                  escreval("======================================")

                  escreval(" == Agradecemos sua volta ==")

                  escreval("")
                  escreval("Durante 3 anos, realizamos a análise de 3 naves encontradas.")
                  escreval("")
                  escreval("Aqui mostramos os resultados da análise e como devemos reagir.")
                  escreval("")
                  escreval("======================================")

                  escreval("Digite ENTER para a análise das naves.")
                  leia(respostaS)

                  para I de 1 ate 3 faca

                     escreva("Nave", I, ":")

                     para J de 1 ate 3 faca

                        escreva (nave[I,J], " anos luz |")

                     fimpara

                     escreval("")

                  fimpara

                  para I de 1 ate 3 faca

                     se (nave[I,1] < nave[I,2]) entao

                        se (nave[I,2] < nave[I,3]) entao

                           sinal[I] <- 0

                        senao

                           sinal[I] <- 1

                        fimse

                     senao

                        se (nave[I,2] < nave[I,3]) entao

                           sinal[I] <- 1

                        senao

                           sinal[I] <- 2

                        fimse

                     fimse

                  fimpara

                  para I de 1 ate 3 faca

                     limpatela

                     escreval("======================================")
                     escreval("Situação da nave", I,":")
                     escreval("")

                     escreva("Nave", I, ":")

                     para J de 1 ate 3 faca

                        escreva (nave[I,J], " anos luz |")

                     fimpara

                     escreval("")
                     escreval("")

                     se (sinal[I] = 0) entao

                        escreval("Tranquilidade, nada precisa ser feito.")

                     senao

                        se (sinal[I] = 1) entao

                           escreval("Alerta, mais análise é necessário.")

                        senao

                           se (sinal[I] = 2) entao

                              escreval("     / \     ")
                              escreval("    / | \    ")
                              escreval("   /  |  \   ")
                              escreval("  /   o   \  ")
                              escreval(" /_________\ ")
                              escreval("")
                              escreval("Emergência, preparativos para invasão são necessários.")
                              escreval("")
                              escreval("Missão de fuga deve começar seus preparos.")

                              mf <- verdadeiro

                           fimse

                        fimse

                     fimse

                     se (I <> 3) entao

                        escreval("======================================")

                        escreval("Digite ENTER para a análise da proxima nave.")
                        leia(respostaS)

                     fimse

                  fimpara

                  escreval("======================================")

                  escreval("Digite 1 para voltar ao menu e 0 para sair do programa.")

                  leia(resposta)

               senao

                  limpatela

                  interrompa

               fimse

            fimescolha

         fimescolha

         limpatela

      ate (resposta = "0") ou (iscolha1 = 0)

   senao

      escreval("Digite o seu nome:")
      leia(nome)

      limpatela

      repita

         escreval ("Seja bem-vindo ao nosso instituto, ", nome,".")

         escreval("=====================================")

         escreval("0 = Sair do programa")
         escreval("1 = Curiosidades")
         escreval("2 = Futuras missões")
         escreval("3 = Historia da instituição")

         escreval("=====================================")

         escreval("Digite o respectivo número da seção desejada :")

         leia(iscolha1)

         limpatela

         escolha iscolha1

         caso 1

            escreval("Escolha a curiosidade desejada!")

            escreval("=====================================")

            escreval("1 = O que é a IAB?")
            escreval("2 = Como a IAB surgiu?")
            escreval("3 = Donos da IAB")

            escreval("=====================================")

            escreval("Digite o respectivo número da seção desejada :")

            leia(iscolha2)

            limpatela

            escolha iscolha2

            caso 1

               escreval("=====================================")

               escreval("A IAB é um Instituto de Astronomia criado pelo Governo")

               escreval("=====================================")

               escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
               leia (resposta)

               limpatela

            caso 2

               escreval("=====================================")

               escreval("A IAB surgiu em 2025 após um grande investimento do Governo")

               escreval("=====================================")

               escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
               leia (resposta)

               limpatela

            caso 3

               escreval("=====================================")

               escreval("João Pedro Santos de Oliveira é o atual dono da IAB.")

               escreval("=====================================")

               escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
               leia (resposta)

               limpatela

            fimescolha

         caso 2

            limpatela

            escreval("===============================")

            escreval("1 = Missão para solo marciano")
            escreval("2 = Missão para lua de Júpiter")
            escreval("3 = Missão para superfície do Sol")
            escreval("4 = Missão para lua de Saturno")

            escreval("Digite o respectivo número da missão desejada :")

            escreval("===============================")

            leia(iscolha2)

            escolha iscolha2

            caso 1

               // Missão para Marte-Visitantes

               limpatela

               escreval("Data prevista para lançamento: 22/03/2027")
               escreval("Data prevista para chegada: 30/10/2027")
               escreval("")
               escreval("Andamento da missão: Em preparação")
               escreval("")
               escreval("Nome dos astronautas: ")
               escreval("")
               escreval("1.", nomeA[AM[1]])
               escreval("2.", nomeA[AM[2]])
               escreval("3.", nomeA[AM[3]])
               escreval("")


               // Aderimento (ou não) a missão

               escreval("=====================================")

               escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")

               leia (resposta)

               limpatela


               // Fim da missão para Marte

            caso 2


               // Missão para lua de Júpter-Visitantes


               limpatela

               escreval("Data prevista para lançamento: 21/08/2033")
               escreval("Data prevista para chegada: 02/09/2035")
               escreval("")
               escreval("Andamento da missão: Em desenvolvimento")
               escreval("")
               escreval("Nome dos astronautas: ")
               escreval("1.", nomeA[AJ[1]])
               escreval("2.", nomeA[AJ[2]])
               escreval("3.", nomeA[AJ[3]])
               escreval("")

               escreval("=====================================")

               escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
               leia (resposta)

               limpatela

            caso 3

               //Missão para superfície Solar-Visitantes

               limpatela

               escreval("Data prevista para lançamento: 12/08/2037")
               escreval("Data prevista para chegada: 23/09/2039")
               escreval("")
               escreval("Andamento da missão: Desenvolvendo protótipos")
               escreval("")
               escreval("Modelo do robô utilizado: ")
               escreval("1. YBU-19")
               escreval("")

               escreval("=====================================")

               escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
               leia (resposta)

               limpatela

            caso 4

               //Missão para lua de Saturno-Visitantes

               limpatela

               escreval("Data prevista para lanãmento: 06/07/2047")
               escreval("Data prevista para chegada: 07/06/2054")
               escreval("")
               escreval("Andamento da missão: A confirmar")
               escreval("")
               escreval("Modelo do robô utilizado:")
               escreval("1.AUR-67")
               escreval("")
               escreval("Nome dos astronautas:")
               escreval("1.",nomeA[ALS[1]])
               escreval("2.",nomeA[ALS[2]])
               escreval("3.",nomeA[ALS[3]])
               escreval("")

               escreval("=====================================")

               escreval("Digite 1 para voltar para o menu ou 0 para sair do programa.")
               leia (resposta)

               limpatela

            fimescolha

            limpatela

         caso 3

            escreval("=====================================")

            escreval("A aventura será distribuída em:")

            escreval("1°Parte: O início de tudo.")
            escreval("2°Parte: O novo Presidente (que sempre foi o mesmo).")
            escreval("3°Parte: A contratação do primeiro DEV, Bruno Bulado.")
            escreval("4°Parte: A expansão da IAB e conquistas.")

            escreval("=====================================")

            escreval("Aperte qualquer coisa para iniciar a aventura")

            leia(resposta)

            limpatela

            escreval("=====================================")

            escreval("A IAB surgiu em 2025, após longos processos...")

            escreval("=====================================")

            escreval("Digite qualquer coisa para continuar.")

            leia(resposta)

            limpatela

            escreval("=====================================")

            escreval("O Presidente João Pedro agora comanda a IAB...")

            escreval("=====================================")

            escreval("Digite qualquer coisa para continuar.")

            leia(resposta)

            limpatela

            escreval("=====================================")

            escreval("O primeiro DEV foi contratado para reforçar a equipe...")

            escreval("=====================================")

            escreval("Digite qualquer coisa para continuar.")

            leia(resposta)

            limpatela

            escreval("=====================================")

            escreval("IAB agora cresce sem parar, alcançando cada vez mais conquistas...")

            escreval("=====================================")

            escreval("Digite 0 para sair e 1 para voltar ao menu principal.")
            leia (resposta)

            limpatela

         fimescolha

      fimescolha

      limpatela

   ate (resposta="0")ou(iscolha1=0)

fimse

fimalgoritmo

{ o-----------|--------------------|------------->
Criação      Desenvolvimento    Dias atuais

}