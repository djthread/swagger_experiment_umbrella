defmodule SwaggerExperimentWeb.PageController do
  use SwaggerExperimentWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
