defmodule ElixirIntellisenseRestWeb.Router do
  use ElixirIntellisenseRestWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirIntellisenseRestWeb do
    pipe_through :api

    get "/", RequestHandlerController, :index
    post "/", RequestHandlerController, :handle_request
  end
end
