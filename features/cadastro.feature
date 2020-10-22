#language: pt

Funcionalidade: Cadastro de Usuário
  Sendo um visitante do site Parodify
  Quero fazer meu Cadastro
  Para que eu posso ouvir minhas músicas preferidas

@happy
Cenario: Cadastro
  Dado que acesso a página de cadastro
  Quando submeto meu cadastro com email, senha e confirmação de senha
  Então devo ser redirecionado para a área logada

Cenario: Email não informado
  Dado que acesso a página de cadastro
  Quando submeto meu cadastro sem o email
  Então devo ver Opps! Informe seu email

Cenario: Senha não informada
  Dado que acesso a página de cadastro
  Quando submeto meu cadastro sem as enha
  Então devo ver Opps! Informe sua senha

Cenario: Senha divergente
  Dado que acesso a página de cadastro
  Quando submeto meu cadastro com senha divergente
  Então devo ver Opps! Senhas não são iguais

Cenario: Nenhum campo preenchido
  Dado que acesso a página de cadastro
  Quando submeto meu cadastro sem preencher os campos
  Então devo ver Opps! Informe seu email e senha
