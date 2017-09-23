defmodule Mixeur do
  @moduledoc """
  Mixin for Elixir
  """

  @doc """
  Return the AST to be evaulated. This is merely an quoted version of defdelegate.
  It gives us more flexibility in defining the parameters so it was kept in this form.
  """
  @spec delegate_to(atom) :: list
  def delegate_to(module) do
    :functions
    |> module.__info__()
    |> Enum.map(fn({k, v}) ->
                  {:defdelegate, [context: Elixir, import: Kernel],
                    [{k, [],
                          if v == 0 do
                            []
                          else
                            1..v |> Enum.map(&(to_string(&1))) |> Enum.map(&({String.to_atom(&1), [], Elixir}))
                          end
                     }, [to: module]]
                   }
                end)
  end

  defmacro __using__(_opts) do
    quote do
      defmacro __using__(_opts) do
        Mixeur.delegate_to(__MODULE__)
      end
    end
  end
end
