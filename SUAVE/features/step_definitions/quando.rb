Quando /^clicar no botão "(.*?)"$/ do |botao|
  find_button(botao).click
  save_and_open_page
end

Quando /^clicar no link "(.*?)"$/ do |link|
  find_link(link).click
  save_and_open_page
end

Quando /^eu preencher todos os campos de login$/ do
  fill_in "user_email", :with=> "testonildo@teste.com"
  fill_in "user_password", :with=> "123456"
end

Quando /^preencher os dados de de contato$/ do
  fill_in "contact_name", :with=> "testonildo"
  fill_in "contact_email", :with=> "testonildo@teste.com"
  fill_in "contact_message", :with=> "mensagem teste"
end

Quando /^eu preencher o campo de pesquisa de escolas com "(.*?)"$/ do |pesquisa|
  fill_in "palavra", :with=> pesquisa
end

Quando /^clicar no menu de contato$/ do
  visit(contacts_path)
end