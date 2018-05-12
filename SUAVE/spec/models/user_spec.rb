require 'rails_helper'

RSpec.describe User, type: :model do
  it "Usuario valido com todos os atributos" do
    usuario = User.new(email: "james@email.com",
                       password: "123456",
                       password_confirmation: "123456")

    expect(usuario).to be_valid
  end

  it "Usuario invalido sem email" do
    usuario = User.new(email: nil)
    expect(usuario).to_not be_valid
  end

  it "Usuario invalido sem senha" do
    usuario = User.new(password: nil)
    expect(usuario).to_not be_valid
  end
end
