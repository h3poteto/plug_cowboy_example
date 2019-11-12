defmodule PlugCowboyExample.Plug.CowboyPlug do
  import Plug.Conn
  require Logger

  def init(options), do: options

  def call(conn, opts) do
    conn
    |> inspect
    |> Logger.debug()

    opts
    |> inspect
    |> Logger.debug()

    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Cowboy is working")
  end
end
