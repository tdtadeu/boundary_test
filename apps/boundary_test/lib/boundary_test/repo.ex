defmodule BoundaryTest.Repo do
  use Ecto.Repo,
    otp_app: :boundary_test,
    adapter: Ecto.Adapters.Postgres
end
