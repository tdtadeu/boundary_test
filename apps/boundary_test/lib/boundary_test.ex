defmodule BoundaryTest do
  use Boundary,
    top_level?: true,
    exports: [],
    deps: []

  @moduledoc """
  BoundaryTest keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def foo, do: :ok
end
