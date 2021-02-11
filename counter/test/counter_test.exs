defmodule CounterTest do
  use ExUnit.Case
  doctest Counter

  test "greets the world" do
    assert Counter.hello() == :world
  end

  test "Return count lines value correctly" do
    assert Counter.count_lines() == {:ok, 235_886}
  end
end
