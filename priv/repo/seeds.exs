if Mix.env() == :dev do
  ProgrammingPhoenix.Repo.truncate(ProgrammingPhoenix.Account.User)

  sample_user = %{
    username: "thanh",
    name: "Thanh"
  }

  %ProgrammingPhoenix.Account.User{}
  |> ProgrammingPhoenix.Account.User.changeset(sample_user)
  |> ProgrammingPhoenix.Repo.insert()
end
