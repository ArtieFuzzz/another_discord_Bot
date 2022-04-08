defmodule Alphalix do
  use Application
  alias Alchemy.Cogs
  alias Alchemy.Client

  @token Application.fetch_env!(:alphalix, :token)

  defp load_modules do
    use Alphalix.Commands
  end

  @impl true
  def start(_type, _args) do
    run = Client.start(@token)
    Cogs.set_prefix("x!")
    load_modules()

    run
  end
end
