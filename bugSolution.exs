```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  case x > 3 do
    true -> acc + x
    false -> acc #Explicitly handle the 'else' condition for clarity 
  end
end)

# Alternative solution using a more descriptive function
defmodule MyReducer do
  def reduce_and_handle(list, initial_value) do
    Enum.reduce(list, initial_value, fn x, acc ->
      handle_input(x, acc)
    end)
  end

  defp handle_input(x, acc) when x > 3 do
    acc + x
  end
  defp handle_input(x, acc), do: acc #Handles all other cases
end

IO.puts MyReducer.reduce_and_handle(list, 0)
```