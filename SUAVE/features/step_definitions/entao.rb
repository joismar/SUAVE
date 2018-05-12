Então /^devo ver a mensagem "(.*?)"$/ do |mensagem|
  page.has_content?(mensagem)
end

