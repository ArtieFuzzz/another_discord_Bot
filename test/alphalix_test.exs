defmodule AlphalixTest do
  use ExUnit.Case
  doctest Alphalix

  test "greets the world" do
    assert Alphalix.hello() == :world
  end
end
