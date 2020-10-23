Dado('que acesso a página de cadastro') do
  visit "http://parodify.qaninja.com.br/"
  click_on "EXPERIMENTE AGORA"
end

Quando('submeto meu cadastro com:') do |table|
  user = table.rows_hash
  find("input#user_email").set user[:email]
  find("input#user_password").set user[:senha]
  find("input#user_password_confirmation").set user[:senha_confirma]

  sleep 5
end

Então('devo ser redirecionado para a área logada') do
  pending # Write code here that turns the phrase above into concrete actions
end
