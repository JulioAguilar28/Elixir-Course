defmodule Counter do
  @moduledoc """
  Documentation for `Counter`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Counter.hello()
      :world

  """
  def hello do
    :world
  end

  def count_lines(file_name \\ "words") do
    num_lines =
      File.read!(file_name)
      |> String.split()
      |> Enum.count()

    {:ok, num_lines}
  end

  def count_binary(file_name) do
    content = File.read!(file_name)
    hash = :crypto.hash(:md5, content)

    {:ok, byte_size(hash)}
  end
end
