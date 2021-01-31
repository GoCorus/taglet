defmodule Taglet.Mixfile do
  use Mix.Project

  def project do
    [
      app: :taglet,
      version: "1.0.0-dev",
      elixir: "~> 1.10",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      package: package(),
      deps: deps(),

      # Docs
      name: "Taglet",
      description: description(),
      source_url: "https://github.com/GoCorus/taglet",
      docs: [main: "Taglet", extras: ["README.md"]]
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ecto, ">= 0.0.0"},
      {:postgrex, ">= 0.0.0"},
      {:inflex, ">= 0.0.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      name: :taglet,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["itsquall", "abmm", "dreamingechoes", "Wojnar"],
      licenses: ["Apache License 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoCorus/taglet",
        "Docs" => "https://hexdocs.pm/taglet/Taglet.html"
      }
    ]
  end

  defp description do
    """
    Taglet allows you to manage tags associated to your records.
    It also allows you to specify various contexts

    """
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(:ci), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]
end
