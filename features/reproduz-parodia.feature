#language: pt

Funcionalidade: Reproduz paródia
  Sendo um usuário cadastrado
  Quero reproduzir músicas no player do Parodify
  Para que eu possa ouvir as paródias das minhas bandas favoritas

  Contexto: Login
    * Login com "l4ur4.88@gmail.com" e "l4u1234"

  Cenário: Ouvir paródia
    Dado que eu gosto muito de "Rock"
    Quando toco a seguinte canção:
      | parodia | Sprints de Luta Sprints de Gloria |
      | banda   | Charlie Brown Bug                |
    Então essa paródia deve ficar em modo de reprodução
