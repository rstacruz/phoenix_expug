defmodule PhoenixExpug.Mixfile do
  use Mix.Project

  @version "0.1.1"
  @description "Phoenix template engine for Expug"

  def project do
    [app: :phoenix_expug,
     version: @version,
     description: @description,
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     soucre_url: "https://github.com/rstacruz/phoenix_expug",
     homepage_url: "https://github.com/rstacruz/phoenix_expug",
     package: package(),
     deps: deps(),
     docs: docs()]
  end

  def application do
    [applications: [:phoenix]]
  end

  defp deps do
    [
      {:phoenix, ">= 1.1.0"},
      {:phoenix_html, ">= 2.3.0"},
      {:expug, ">= 0.0.1"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  def package do
    [
      description: @description,
      maintainers: ["Rico Sta. Cruz"],
      licenses: ["MIT"],
      files: ["lib", "mix.exs", "README.md"],
      links: %{github: "https://github.com/rstacruz/phoenix_expug"}
    ]
  end

  def docs do
    [
      source_ref: "v#{@version}",
      main: "readme",
      extras:
        Path.wildcard("*.md") ++
        Path.wildcard("docs/**/*.md")
    ]
  end
end
