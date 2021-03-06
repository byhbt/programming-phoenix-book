defmodule ProgrammingPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :programmingPhoenix,
    adapter: Ecto.Adapters.Postgres

  if Mix.env() in [:dev, :test] do
    def truncate(schema) do
      table_name = schema.__schema__(:source)
      query("TRUNCATE #{table_name}", [])
      :ok
    end
  end
end
