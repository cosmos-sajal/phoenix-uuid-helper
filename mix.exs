defmodule UuidHelperModule.Mixfile do
  use Mix.Project

  def project do
    [
      app: :uuid_helper_module,
      version: "0.0.2",
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {UuidHelperModule.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.3.4"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_ecto, "~> 3.2"},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  # The package information
  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "priv", "LICENSE"],
      maintainers: ["Sajal Sharma"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/cosmos-sajal/phoenix-uuid-helper"},
      description: "A library to give support of uuid_helper in database tables"
    ]
  end
end
