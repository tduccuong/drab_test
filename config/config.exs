# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :drab_test, DrabTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NvCEBfBxf5pg6jl4MhdmrlUfwi5nARDiunL54jC+YjoOWjTuo1SRs0My/SyWHZMv",
  render_errors: [view: DrabTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DrabTest.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "nMPkxuYv"]

# Configures Drab
config :drab, DrabTestWeb.Endpoint,
  otp_app: :drab_test

# Configures default Drab file extension
config :phoenix, :template_engines,
  drab: Drab.Live.Engine

# Configures Drab for webpack
config :drab, DrabTestWeb.Endpoint,
  js_socket_constructor: "window.__socket"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
