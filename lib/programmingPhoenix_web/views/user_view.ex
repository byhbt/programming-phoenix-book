defmodule ProgrammingPhoenixWeb.UserView do
  use ProgrammingPhoenixWeb, :view

  def first_name(%ProgrammingPhoenix.Account.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
