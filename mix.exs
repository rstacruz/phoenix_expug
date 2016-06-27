defmodule PhoenixExpug.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_expug,
     version: "0.0.3",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:phoenix]]
  end

  defp deps do
    [
      {:phoenix, ">= 1.1"},
      {:phoenix_html, ">= 2.3.0"},
      {:expug, ">= 0.0.1"}
    ]
  end

  def package do
    [
      description: "Phoenix template engine for Expug",
      maintainers: ["Rico Sta. Cruz"],
      licenses: ["MIT"],
      files: ["lib", "mix.exs", "README.md"],
      links: %{github: "https://github.com/rstacruz/phoenix_expug"}
    ]
  end
end
