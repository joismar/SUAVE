Então /^devo ver a mensagem "(.*?)"$/ do |mensagem|
  page.has_content?(mensagem)
end

Então /^devo ser redirecionado para página inicial$/ do
  have_current_path(root_path)
end

