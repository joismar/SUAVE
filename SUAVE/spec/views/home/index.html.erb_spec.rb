require "rails_helper"

describe "home/index.html.erb", type: :view do
  it "Verificar pagina Inicial" do

    render
    expect(rendered).to have_selector('h1', :text => 'SUAVE')

  end

  it "Verificar campo de busca pagina Inicial" do

    render
    expect(rendered).to have_selector('input', :id => 'pesquisaEscola')

  end
end