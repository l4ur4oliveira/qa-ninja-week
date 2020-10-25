Dado('que acesso a página de login') do
  goto_login()
end

Quando('submeto minhas credenciais com: {string} e {string}') do |email, senha|
  login_with(email, senha)
end

Então('deve ver a mensagem de erro: {string}') do |expected_message|
  expect(login_message).to eql expected_message
end
