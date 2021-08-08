# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :elixir_intellisense_rest, ElixirIntellisenseRestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ww8wkEWQxMR9oqF2HQRTJbfffHHwiu3KXU4Vvz8YUet/9tJi//Yli/qGOEM2cTKe",
  render_errors: [view: ElixirIntellisenseRestWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ElixirIntellisenseRest.PubSub,
  live_view: [signing_salt: "ZhFwVX9Q"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
