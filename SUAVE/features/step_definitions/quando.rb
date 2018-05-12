Quando /^clicar em "(.*?)"$/ do |botao|
  find_button(botao).click
  save_and_open_page
end