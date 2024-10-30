defmodule LayananMbkm.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      LayananMbkmWeb.Telemetry,
      LayananMbkm.Repo,
      {DNSCluster, query: Application.get_env(:layanan_mbkm, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: LayananMbkm.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: LayananMbkm.Finch},
      # Start a worker by calling: LayananMbkm.Worker.start_link(arg)
      # {LayananMbkm.Worker, arg},
      # Start to serve requests, typically the last entry
      LayananMbkmWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: LayananMbkm.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    LayananMbkmWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
