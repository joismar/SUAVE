E /^devo ver o botão "(.*?)"$/ do |botao|
	have_button(botao)
end

E /^devo ser redirecionado para página de login$/ do
  have_current_path(new_user_session_path)
end