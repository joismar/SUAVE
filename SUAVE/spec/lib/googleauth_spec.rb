require 'rails_helper'

RSpec.feature "usuário faz login" do
  it "usando google auth" do
	hash_gen_ominiauth
    visit new_user_session_url
    click_on("Entrar com o Google")
    expect(page).to have_content("Jean Silva")
    expect(page).to have_link("Sair")
  end
end

def hash_gen_ominiauth
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:google] = OmniAuth::AuthHash.new({
    provider: "google",
    uid: "117761009515063758653",
    info: {
      email: "jcns@cin.ufpe.br",
      first_name: "Jean Silva",
    },
    credentials: {
      token: "kaposokaopsdoksdo",
      refresh_token: "kaposokaopsdoksdo",
      expires_at: Time.current.round,
    }
  })
end
