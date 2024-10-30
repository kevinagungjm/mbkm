defmodule LayananMbkmWeb.FaqController do
  use LayananMbkmWeb, :controller

  def faq(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :faq, layout: false)
  end


end
