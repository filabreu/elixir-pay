defmodule App.NumbersTest do
  use ExUnit.Case

  alias App.Numbers

  describe "sum_from_file/1" do
    test "when file is valid, return the sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "when file is invalid, return an error" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "Invalid file!"}}

      assert response == expected_response
    end
  end
end
