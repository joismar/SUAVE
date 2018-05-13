Quando /^clicar no botão "(.*?)"$/ do |botao|
  click_button(botao)
  save_and_open_page
end

Quando /^eu preencher todos os campos de login$/ do
  fill_in "user_email", :with=> "testonildo@teste.com"
  fill_in "user_password", :with=> "123456"
end