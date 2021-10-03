if Mix.env() == :dev do
  ProgrammingPhoenix.Repo.query("TRUNCATE users", [])

  sample_user = %{
    username: "thanh",
    name: "Thanh"
  }

  %ProgrammingPhoenix.Account.User{}
  |> ProgrammingPhoenix.Account.User.changeset(sample_user)
  |> ProgrammingPhoenix.Repo.insert
end
