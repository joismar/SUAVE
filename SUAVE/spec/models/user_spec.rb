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

  it "Usuario criado no B, com todos os atributos" do
    usuario = User.create(email: "james@email.com",
                       password: "123456",
                       password_confirmation: "123456")

    novo = User.first
    expect(novo.email).to eq("james@email.com")
  end

  it "Usuario não criado no BD, sem email" do
    usuario = User.create(email: nil,
                       password: "123456",
                       password_confirmation: "123456")

    expect(User.first).to eq(nil)
  end

  it "Usuario não criado no BD, sem senha" do
    usuario = User.create(email: "james@email.com",
                       password: nil)

    expect(User.first).to eq(nil)
  end
end
