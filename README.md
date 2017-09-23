# Mixeur

**Mixin for Elixir**

## What it does?

It allows you to do mixin like in Ruby. For example:

I have an apple:
```elixir
defmodule Apple do
  use Mixeur

  def apple do
    "Apple"
  end
end
```

I have a pen:
```elixir
defmodule Pen do
  use Mixeur

  def pen do
    "Pen"
  end
end
```

Oh Oh Oh ApplePen:
```elixir
defmodule ApplePen do
    use Apple
    use Pen

    def apple_pen do
      "#{apple()}#{pen()}"
    end
end
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `mixeur` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:mixeur, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/mixeur](https://hexdocs.pm/mixeur).
