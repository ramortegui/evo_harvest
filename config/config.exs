# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :evo_harvest,
  ecto_repos: [EvoHarvest.Repo]

# Configures the endpoint
config :evo_harvest, EvoHarvestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "r5CPaq1OQPYixbfwqMAC80xxIwW9dVTnQXldDjKOERHpZ8kzd0+UIUMe7e0SRcMl",
  render_errors: [view: EvoHarvestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EvoHarvest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
