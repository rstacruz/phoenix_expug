defmodule PhoenixExpug.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_expug,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:expug, git: "git://github.com/rstacruz/expug.git"}
    ]
  end

  def package do
    [
      maintainers: ["Rico Sta. Cruz"],
      licenses: ["MIT"],
      files: ["lib", "mix.exs", "README.md"],
      links: %{github: "https://github.com/rstacruz/phoenix_expug"}
    ]
  end
end
