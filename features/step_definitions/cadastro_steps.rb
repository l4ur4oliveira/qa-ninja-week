Dado('que acesso a página de cadastro') do
  visit "/"
  click_on "EXPERIMENTE AGORA"
end

Quando('submeto meu cadastro com:') do |table|
  user = table.rows_hash
  
  remove_email user[:email]

  find("input#user_email").set user[:email]
  find("input#user_password").set user[:senha]
  find("input#user_password_confirmation").set user[:senha_confirma]

  click_on "Cadastrar"
end

Então('devo ser redirecionado para a área logada') do
  expect(page).to have_css '.dashboard'
end

Então('devo ver a mensagem: {string}') do |expected_message|
  alert = find(".message p")
  expect(alert.text).to eql expected_message
end

Quando('acesso a página de cadastro') do
  steps %(
    Dado que acesso a página de cadastro
  )
end

Então('deve exibir o seguinte css: {string}') do |expected_css|
  expect(page).to have_css expected_css
end
