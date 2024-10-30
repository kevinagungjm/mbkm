defmodule LayananMbkmWeb.FormController do
  use LayananMbkmWeb, :controller

  def form(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :form, layout: false)
  end

end
