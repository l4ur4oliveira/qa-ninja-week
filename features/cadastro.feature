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

  Esquema do Cenário: Tentativa de cadastro
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro com:
      | email          | <email> |
      | senha          | <senha> |
      | senha_confirma | <confirma_senha> |
    Então devo ver a mensagem: "<mensagem_saida>"

    Exemplos:
      | email              | senha   | confirma_senha | mensagem_saida                       |
      |                    | l4u1234 | l4u1234        | Oops! Informe seu email.             |
      | l4ur4.88@gmail.com |         |                | Oops! Informe sua senha.             |
      | l4ur4.88@gmail.com | l4u1234 | l4u5678        | Oops! Senhas não são iguais.         |
      |                    |         |                | Oops! Informe seu email e sua senha. |

  Cenario: Validação do campo email
    Quando acesso a página de cadastro
    Então deve exibir o seguinte css: "input[type=email]"
