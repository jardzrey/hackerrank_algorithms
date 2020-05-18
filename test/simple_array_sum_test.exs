defmodule SimpleArraySumTest do
  use ExUnit.Case
  doctest SimpleArraySum

  test "Sum array elements" do

    assert SimpleArraySum.sum([1, 2, 3]) == 6

    assert SimpleArraySum.sum([0, 1, 2]) == 3
  end

end
