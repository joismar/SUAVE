Então /^devo ver a mensagem "(.*?)"$/ do |mensagem|
  page.has_content?(mensagem)
end

Então /^devo ser redirecionado para página inicial$/ do
  have_current_path(root_path)
end

Então /^devo ver os campos de contato$/ do
  page.find('#contact_name')
  page.find('#contact_email')
  page.find('#contact_message')
end