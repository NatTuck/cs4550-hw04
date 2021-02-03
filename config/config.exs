# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :practice, PracticeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Q7kK6E9pH7FhiZ7qvumr2m+YUzh8kZ3SffpIDHrh1BIDup4DZpoKzDQtN1vTegjC",
  render_errors: [view: PracticeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Practice.PubSub,
  live_view: [signing_salt: "Vd1s6o7x"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
