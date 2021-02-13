defmodule EthSync.MixProject do
  use Mix.Project

  def project do
    [
      app: :eth_sync,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {EthSync.Application, []}
    ]
  end

  defp deps do
    [
      {:gen_stage, "~> 1.1"},
      {:hackney, "~> 1.17"},
      {:jason, "~> 1.2"},
      {:tesla, "~> 1.4"}
    ]
  end
end
