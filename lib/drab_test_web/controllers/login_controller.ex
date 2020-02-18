defmodule DrabTestWeb.LoginController do
  use DrabTestWeb, :controller
  
  def index(conn, _params) do
    render(conn, "index.html", error: nil)
  end
end
