defmodule Counter do
  ## The directory path works only if is executed from session_1 directory
  def count_lines do
    num_lines =
      File.read!('assets/words')
      |> String.split()
      |> Enum.count()

    {:ok, num_lines}
  end
end

## TODO Make pattern-matching with the return value of count_lines function and print its value
{_status, num_lines} = Counter.count_lines()
IO.puts(num_lines)

## Simple way
Counter.count_lines() |> elem(1) |> IO.puts()
