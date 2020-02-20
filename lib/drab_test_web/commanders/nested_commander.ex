defmodule DrabTestWeb.NestedCommander do
  use Drab.Commander
  require Logger

  defhandler parent(socket, _sender) do
    Logger.info "Parent handler"
  end

  defhandler child(socket, _sender) do
    Logger.info "Child handler"
  end
end
