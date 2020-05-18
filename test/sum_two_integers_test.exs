defmodule SumTwoIntegersTest do
  use ExUnit.Case
  doctest SumTwoIntegers

  test "Sum two integers" do

    assert SumTwoIntegers.sum(1, 2) == 3
  end

end
