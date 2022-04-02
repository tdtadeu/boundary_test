defmodule BoundaryTest.Accounts do
  use Boundary,
    exports: [],
    deps: [BoundaryTest]

  @moduledoc """
  This is the accounts context.

  Soon there will be so many functions living here you won't be able to find what you need.
  We like it messy.
  """

  alias BoundaryTest.Accounts.User

  def foo, do: User.foo()

  def bar, do: BoundaryTest.foo()
end
