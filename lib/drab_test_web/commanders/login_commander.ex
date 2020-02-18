defmodule DrabTestWeb.LoginCommander do
  use Drab.Commander

  defhandler login(socket, _sender) do
    poke socket, error: "Test error!"
  end
end
