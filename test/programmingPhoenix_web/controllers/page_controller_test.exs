defmodule ProgrammingPhoenixWeb.PageControllerTest do
  use ProgrammingPhoenixWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Programming Phoenix!"
  end
end
