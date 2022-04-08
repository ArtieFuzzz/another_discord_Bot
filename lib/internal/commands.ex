defmodule Alphalix.Commands do
  use Alchemy.Cogs
  alias Alphalix.Utils.Time
  alias Alchemy.Client

  Cogs.def ping do
    old = message.timestamp

    {:ok, message} = Cogs.say("Pong!")

    time_diff = Time.diff(message.timestamp, old)

    Client.edit_message(message, "Current ping is #{time_diff}ms")
  end

  Cogs.def hello do
    Cogs.say("Hello!")
  end
end
