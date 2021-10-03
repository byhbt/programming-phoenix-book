defmodule ProgrammingPhoenix.MultimediaFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ProgrammingPhoenix.Multimedia` context.
  """

  @doc """
  Generate a video.
  """
  def video_fixture(attrs \\ %{}) do
    {:ok, video} =
      attrs
      |> Enum.into(%{
        description: "some description",
        title: "some title",
        url: "some url"
      })
      |> ProgrammingPhoenix.Multimedia.create_video()

    video
  end
end
