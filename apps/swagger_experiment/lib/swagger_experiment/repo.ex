defmodule SwaggerExperiment.Repo do
  use Ecto.Repo,
    otp_app: :swagger_experiment,
    adapter: Ecto.Adapters.Postgres
end
