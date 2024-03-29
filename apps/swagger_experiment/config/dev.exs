# Since configuration is shared in umbrella projects, this file
# should only configure the :swagger_experiment application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :swagger_experiment, SwaggerExperiment.Repo,
  username: "postgres",
  password: "postgres",
  database: "swagger_experiment_dev",
  hostname: "localhost",
  pool_size: 10
