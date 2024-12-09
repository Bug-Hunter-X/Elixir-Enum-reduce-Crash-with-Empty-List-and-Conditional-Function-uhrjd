```elixir
list = [1, 2, 3, 4, 5]

result = if Enum.empty?(list) do
  0
else
  Enum.reduce(list, 0, fn x, acc ->
    if x > 3 do
      acc + x
    else
      acc
    end
  end)
end
```