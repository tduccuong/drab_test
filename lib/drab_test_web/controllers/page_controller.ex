defmodule DrabTestWeb.PageController do
  use DrabTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
