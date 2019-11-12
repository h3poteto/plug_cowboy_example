defmodule PlugCowboyExampleTest do
  use ExUnit.Case
  doctest PlugCowboyExample

  test "greets the world" do
    assert PlugCowboyExample.hello() == :world
  end
end
