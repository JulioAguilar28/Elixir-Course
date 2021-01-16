defmodule Counter do
  def count_lines do
    num_lines =
      File.read!('words')
      |> String.split()
      |> Enum.count()

    {:ok, num_lines}
  end
end

## TODO Hacer pattern-matching con el valor de retorno de count_lines y mandar a imprimir el valor
IO.inspect(Counter.count_lines())
