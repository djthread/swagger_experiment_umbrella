# Since configuration is shared in umbrella projects, this file
# should only configure the :swagger_experiment_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :swagger_experiment_web,
  ecto_repos: [SwaggerExperiment.Repo],
  generators: [context_app: :swagger_experiment]

# Configures the endpoint
config :swagger_experiment_web, SwaggerExperimentWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ks+D2fCMBHBoi78skHJmHazueuvWIJAec5pLhqQ4/af9WHeaQRic7RXdSzlVYYQw",
  render_errors: [view: SwaggerExperimentWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SwaggerExperimentWeb.PubSub, adapter: Phoenix.PubSub.PG2]

config :swagger_experiment_web, :phoenix_swagger,
  swagger_files: %{
    "priv/static/swagger.json" => [
      router: SwaggerExperimentWeb.Router
    ]
  }

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
