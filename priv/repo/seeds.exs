# Script for populating the database. You can run it as:
# mix run priv/repo/seeds.exs

alias Rockelivery.{Item, Order, Repo, User}

user = %User{
  name: "Name 1",
  email: "name1@mail.com",
  cpf: "12345678910",
  cep: "01001000",
  password: "123456",
  address: "Address 1",
  age: 22
}

%User{id: user_id} = Repo.insert!(user)

item1 = %Item{
  category: :food,
  description: "Description 1",
  price: Decimal.new("10.30"),
  photo: "photo1.png"
}

item2 = %Item{
  category: :food,
  description: "Description 2",
  price: Decimal.new("30.10"),
  photo: "photo2.png"
}

Repo.insert!(item1)
Repo.insert!(item2)

order = %Order{
  user_id: user_id,
  items: [item1, item1, item2],
  address: "Address 1 | Orders",
  comments: "Comments 1",
  payment_method: :money
}

Repo.insert!(order)
