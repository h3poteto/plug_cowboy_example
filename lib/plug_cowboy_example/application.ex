defmodule PlugCowboyExample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: PlugCowboyExample.Plug.CowboyPlug, options: [port: 4000]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PlugCowboyExample.Supervisor]

    Logger.info("Starting cowboy server at 0.0.0.0:4000 ...")

    Supervisor.start_link(children, opts)
  end
end
