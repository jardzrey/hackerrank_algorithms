defmodule CompareTripletsTest do
use ExUnit.Case
doctest CompareTriplets

  test "Compare the triplets" do
    assert CompareTriplets.main([1, 2, 3], [1, 1, 1]) == "2 - 0"

    assert CompareTriplets.main([1, 4, 3], [1, 1, 15]) == "1 - 1"

    assert CompareTriplets.main([1001, 2, 30], [2, 3, 4000]) == "1 - 2"

  end

end
