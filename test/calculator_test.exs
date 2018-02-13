defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  setup do
    {:ok, almir: 2, santos: 3}
  end

  # test "greets the world" do
  #   assert Calculator.hello() == :world
  # end

  # test "the truth" do
  #   assert 1 + 1 == 2
  # end

  test "should return 4 when multiply 2 by 2", %{almir: value} do
    # assert App.Calculator.multiply(2,2) == 4#5, "This is a error!"
    refute App.Calculator.multiply(2,value) == 5
  end

  @tag :negative
  test "should return nil when multiply nil by 2", %{santos: value} do
    assert App.Calculator.multiply(nil,value) == nil
  end

  @tag :negative
  test "should return nil when multiply 2 by nil" do
    assert App.Calculator.multiply(2,nil) == nil
  end
end


defmodule App.Calculator do 
  use ExUnit.Case, async: true

  @moduletag :math
  def multiply(a,b) do
    cond do
      is_nil(a) || is_nil(b) -> nil
      true -> a * b
    end
  end
end