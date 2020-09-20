defmodule ThatNotebookWeb.PageController do
  use ThatNotebookWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
