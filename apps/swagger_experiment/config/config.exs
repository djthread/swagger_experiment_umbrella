# Since configuration is shared in umbrella projects, this file
# should only configure the :swagger_experiment application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :swagger_experiment,
  ecto_repos: [SwaggerExperiment.Repo]

import_config "#{Mix.env()}.exs"
