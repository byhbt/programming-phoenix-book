defmodule ProgrammingPhoenix.AccountFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ProgrammingPhoenix.Account` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        name: "some name",
        username: "some username",
        password: "123"
      })
      |> ProgrammingPhoenix.Account.create_user()

    user
  end
end
