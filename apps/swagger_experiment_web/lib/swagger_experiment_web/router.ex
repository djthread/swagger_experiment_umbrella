defmodule SwaggerExperimentWeb.Router do
  use SwaggerExperimentWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SwaggerExperimentWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/api", SwaggerExperimentWeb do
    pipe_through :api
    get "/foo.json", APIController, :foo
  end

  def swagger_info do
    %{
      info: %{
        version: "1.0",
        title: "My App"
      }
    }
  end
end
