defmodule SimpleArraySum do
  @moduledoc """

  Given an array of integers, find the sum of its elements.

  """

  @doc """

  Return the sum of array elements.

  ## Parameters
  
  - array: integers list

  ## Examples
  
  iex> SimpleArraySum.sum([1, 2, 3])
  6
  """
  def sum(array) do
    Enum.reduce(array, 0, fn x, acc -> acc + x end)
  end

end
