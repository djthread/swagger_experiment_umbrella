defmodule SwaggerExperimentWeb.APIController do
  use SwaggerExperimentWeb, :controller
  use PhoenixSwagger

  swagger_path :index do
    get("/foo.json")
    description("Lots of foo")
    response(200, "Success")
  end

  def foo(conn, _params) do
    json(200, %{"status" => "oh yeah"})
  end
end
