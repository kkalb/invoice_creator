defmodule InvoiceCreatorTest do
  use ExUnit.Case
  doctest InvoiceCreator

  test "greets the world" do
    assert InvoiceCreator.hello() == :world
  end
end
