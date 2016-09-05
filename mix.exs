defmodule HELF.Mixfile do
  use Mix.Project

  def project do
    [app: :helf,
     version: "0.1.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :he_broker, :cowboy],
     mod: {HELF, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:he_broker, git: "ssh://git@git.hackerexperience.com/diffusion/BROKER/HEBroker.git"},
      {:cowboy,"~> 1.0"},
      {:poison, "~> 2.0"}
    ]
  end
end
