Dado('que acesso a página de login') do
  visit "http://parodify.qaninja.com.br/"
  click_on "Login"
end

Quando('submeto minhas credenciais com: {string} e {string}') do |email, senha|
  find("#user_email").set email
  find("#user_password").set senha
  click_on "Log in"
end

Então('deve ver a mensagem de erro: {string}') do |expected_message|
  message = find(".message .message-body")
  expect(message.text).to eql expected_message
end
