defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rockelivery.Factory

  alias RockeliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)
    token = "token_example"

    response = render(UsersView, "create.json", user: user, token: token)

    assert %{
             message: "User created!",
             token: token,
             user: %Rockelivery.User{
               address: "address test",
               age: 22,
               cep: "12345678",
               cpf: "12345678901",
               email: "email@mail.com",
               id: "508ed367-d6e5-46e8-822f-bfdb3e15d654",
               inserted_at: nil,
               name: "name",
               password: "password",
               password_hash: nil,
               updated_at: nil
             }
           } == response
  end
end
