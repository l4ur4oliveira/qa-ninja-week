#language: pt

Funcionalidade: Cadastro de Usuário
  Sendo um visitante do site Parodify
  Quero fazer meu Cadastro
  Para que eu posso ouvir minhas músicas preferidas

  @happy
  Cenario: Cadastro
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro com:
      | email          | l4ur4.88@gmail.com |
      | senha          | l4u1234            |
      | senha_confirma | l4u1234            |
    Então devo ser redirecionado para a área logada

  Cenario: Email não informado
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro com:
      | email          |         |
      | senha          | l4u1234 |
      | senha_confirma | l4u1234 |
    Então devo ver a mensagem: "Oops! Informe seu email."

  Cenario: Senha não informada
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro com:
      | email          | l4ur4.88@gmail.com |
      | senha          |                    |
      | senha_confirma |                    |
    Então devo ver a mensagem: "Oops! Informe sua senha."

  Cenario: Senha divergente
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro com:
      | email          | l4ur4.88@gmail.com |
      | senha          | l4u1234            |
      | senha_confirma | l4u5678            |
    Então devo ver a mensagem: "Oops! Senhas não são iguais."

  Cenario: Nenhum campo preenchido
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro com:
      | email          | |
      | senha          | |
      | senha_confirma | |
    Então devo ver a mensagem: "Oops! Informe seu email e sua senha."
