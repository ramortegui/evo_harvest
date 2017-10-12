use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :evo_harvest, EvoHarvestWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :evo_harvest, EvoHarvest.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "evo_harvest_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
