defmodule UuidHelperModuleWeb.PageController do
  use UuidHelperModuleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
