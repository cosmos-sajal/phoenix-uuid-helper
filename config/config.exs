# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :uuid_helper_module,
  ecto_repos: [UuidHelperModule.Repo]

# Configures the endpoint
config :uuid_helper_module, UuidHelperModuleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "b8a2Yfnxpb7Qu9rN0n5KU3/8LRx0KbhBgTP3+e5t5TvCZ6xMi97DRzbXRLyiFoXm",
  render_errors: [view: UuidHelperModuleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: UuidHelperModule.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
