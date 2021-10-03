defmodule ProgrammingPhoenixWeb.UserController do
  use ProgrammingPhoenixWeb, :controller

  alias ProgrammingPhoenix.Account

  def index(conn, _params) do
    users = Account.list_users()

    render(conn, "index.html", users: users)
  end
end
