defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

  def user_params_factory do
    %{
      "name" => "name",
      "email" => "email@mail.com",
      "password" => "password",
      "age" => 22,
      "cpf" => "12345678901",
      "cep" => "12345678",
      "address" => "address test"
    }
  end

  def user_factory do
    %User{
      id: "508ed367-d6e5-46e8-822f-bfdb3e15d654",
      name: "name",
      email: "email@mail.com",
      password: "password",
      age: 22,
      cpf: "12345678901",
      cep: "12345678",
      address: "address test"
    }
  end

  def cep_info_factory do
    %{
      "bairro" => "Sé",
      "cep" => "01001-000",
      "complemento" => "lado ímpar",
      "ddd" => "11",
      "gia" => "1004",
      "ibge" => "3550308",
      "localidade" => "São Paulo",
      "logradouro" => "Praça da Sé",
      "siafi" => "7107",
      "uf" => "SP"
    }
  end
end
