defmodule LivWeb.PageController do
  use LivWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
