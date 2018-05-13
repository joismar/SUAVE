Então /^devo ver a mensagem "(.*?)"$/ do |mensagem|
  page.has_content?(mensagem)
end

Então /^devo ser redirecionado para página inicial$/ do
  expect(root_path)
end

