defmodule LayananMbkmWeb.LoginController do
  use LayananMbkmWeb, :controller

  def login(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :login, layout: false)
  end


end
