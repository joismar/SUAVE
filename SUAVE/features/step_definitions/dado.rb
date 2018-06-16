Dado /^que eu estou na página inicial$/ do
  visit(root_path)
end

Dado /^que eu estou na página de contato$/ do
  visit(contacts_path)
end

Dado /^que eu estou na página escolas$/ do
  visit(escola_path)
end

Dado /^que eu estou na página de login$/ do
  visit(new_user_session_path)
end

Dado /^que eu estou na página de cadastro$/ do
  visit(new_user_registration_path)
end