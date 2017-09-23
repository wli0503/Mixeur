defmodule MixeurTest do
  use ExUnit.Case
  doctest Mixeur

  test "greets the world" do
    assert Mixeur.hello() == :world
  end
end
