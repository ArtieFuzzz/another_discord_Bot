defmodule Alphalix do
  use Application
  alias Alchemy.Cogs
  alias Alchemy.Client

  defp load_modules do
    use Alphalix.Commands
  end

  @impl true
  def start(_type, _args) do
    run = Client.start("NTU5MjQ4Mzg0MjQ3MDcwNzIw.XJcWpQ.7dCELr-MnoHqV1Wt4sM-uey98tc")
    Cogs.set_prefix("x!")
    load_modules()

    run
  end
end
