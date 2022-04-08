defmodule Alphalix.Commands do
  use Alchemy.Cogs

  Cogs.def ping do
    Cogs.say("Ping!")
  end
end
