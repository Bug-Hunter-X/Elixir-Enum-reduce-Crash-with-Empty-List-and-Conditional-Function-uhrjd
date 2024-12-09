```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  if x > 3 do
    acc + x
  else
    acc
  end
end)
```
This code attempts to sum only the elements greater than 3. However, if the list is empty, it will crash because Enum.reduce with an empty list and a function that may not always return a value will result in an error. 