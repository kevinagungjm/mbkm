defmodule LayananMbkmWeb.TimelineController do
  use LayananMbkmWeb, :controller

  def timeline(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :timeline, layout: false)
  end
end
