#language: pt

Funcionalidade: Login
  Sendo um usuário previamente cadastrado
  Quero acessar o sistema com meu email e senha
  Para que eu possa ter acesso às playlists do Parodify

  Cenario: Login de usuário
    Dado que acesso a página de login
    Quando submeto minhas credenciais com: "l4ur4.88@gmail.com" e "l4u1234"
    Então devo ser redirecionado para a área logada
  
  Esquema do Cenário: Tentativa de login
    Dado que acesso a página de login
    Quando submeto minhas credenciais com: "<email>" e "<senha>"
    Então deve ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

    Exemplos:
      | email              | senha   |
      | lau@lau.com.br     | 12345   |
      |                    |         |
      | l4ur4.88@gmail.com |         |
      |                    | l4u1234 |
