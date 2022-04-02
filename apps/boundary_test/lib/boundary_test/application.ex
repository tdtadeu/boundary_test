defmodule BoundaryTest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      BoundaryTest.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: BoundaryTest.PubSub}
      # Start a worker by calling: BoundaryTest.Worker.start_link(arg)
      # {BoundaryTest.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: BoundaryTest.Supervisor)
  end
end
