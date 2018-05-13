Dado /^que eu estou na página inicial$/ do
  visit(root_path)
end

Dado /^que eu estou na página de login$/ do
  visit(new_user_session_path)
end