defmodule ProgrammingPhoenixWeb.UserController do
  use ProgrammingPhoenixWeb, :controller

  alias ProgrammingPhoenix.Account
  alias ProgrammingPhoenix.Account.User

  def index(conn, _params) do
    users = Account.list_users()

    render(conn, "index.html", users: users)
  end

  def show(conn, %{"id" => id}) do
    user = Account.get_user!(id)

    render(conn, "show.html", user: user)
  end

  def new(conn, _params) do
    changeset = Account.change_registration(%User{})

    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"user" => user_params}) do
    case Account.register_user(user_params) do
      {:ok, user} ->
        conn
        |> put_flash(:info, "#{user.name} created")
        |> redirect(to: Routes.user_path(conn, :index))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end
end
