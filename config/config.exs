# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :portfolio_analyst,
  ecto_repos: [PortfolioAnalyst.Repo]

# Configures the endpoint
config :portfolio_analyst, PortfolioAnalystWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2jjXnqalOxkToE+Pxk021yyRxDxAfW173Gfr8Ftbi4GHbnGnfVXNjzRtsAIMKaYc",
  render_errors: [view: PortfolioAnalystWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PortfolioAnalyst.PubSub,
  live_view: [signing_salt: "YESm9X26"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
