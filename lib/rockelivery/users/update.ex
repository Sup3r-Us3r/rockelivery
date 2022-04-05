defmodule Rockelivery.Users.Update do
  import Ecto.Changeset, only: [change: 2]

  alias Rockelivery.{Error, Repo, User}

  def call(%{"id" => id} = params) do
    case Repo.get(User, id) do
      nil -> {:error, Error.build_user_not_found_error()}
      user -> do_update(user, params)
    end
  end

  defp do_update(user, params) do
    user
    |> change(%{password: "123456"})
    |> User.changeset(params)
    |> Repo.update()
  end
end
