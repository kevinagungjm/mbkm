defmodule LayananMbkmWeb.ProfileController do
  use LayananMbkmWeb, :controller

  def profile(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :profile, layout: false)
  end


end
