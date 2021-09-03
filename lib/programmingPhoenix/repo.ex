defmodule ProgrammingPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :programmingPhoenix,
    adapter: Ecto.Adapters.Postgres
end
