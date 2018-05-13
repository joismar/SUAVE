Quando /^clicar no botão "(.*?)"$/ do |botao|
  find_button(botao).click
  save_and_open_page
end

Quando /^eu preencher todos os campos de login$/ do
  fill_in "email_field", :with=> "testonildo@teste.com"
  fill_in "password_field", :with=> "123456"
end