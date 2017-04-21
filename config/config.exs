# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phx, Phx.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QyE3Cj4Hc5dK0MkX40ALIsxD29L0w2UC5QIp6F/2gVk7H5j2gSY9hm2Ci2NLvfYY",
  render_errors: [view: Phx.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
