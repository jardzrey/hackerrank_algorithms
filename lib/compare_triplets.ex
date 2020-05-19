defmodule CompareTriplets do
  @moduledoc """

  It must return an array of two integers, the first being Alice'score and the second beign Bob's

  ## Parameters

  - a: an array of integers representing Alice's challenge rating
  - b: an array of integers representing Bob's challenge rating

  ## Example
  
  iex> CompareTriplets.main([1, 2, 3], [1, 1, 1])
  "2 - 0"
  """
  def main(triplet_a, triplet_b) do
    [triplet_a, triplet_b]
    |> compare
    |> boolean_to_integer
    |> final_score
  end
  
  def compare(triplets) do
    [a, b] = triplets
    [a1, a2, a3] = a
    [b1, b2, b3] = b

    [[a1 > b1, a2 > b2, a3 > b3], [b1 > a1, b2 > a2, b3 > a3]]
  end

  def boolean_to_integer(comparison) do
    [a, b] = comparison
    a_int = Enum.map(a, fn x -> if x, do: 1, else: 0 end)
    b_int = Enum.map(b, fn x -> if x, do: 1, else: 0 end)
    
    [a_int, b_int]
  end

  def final_score(score) do
    [a, b] = score
    acc_a = Enum.reduce(a, 0, fn x, acc -> acc + x end)
    acc_b = Enum.reduce(b, 0, fn x, acc -> acc + x end)

    "#{acc_a} - #{acc_b}"
  end


end
