defmodule EvoHarvestWeb.Router do
  use EvoHarvestWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api
    forward "/api", Absinthe.Plug,
      schema: EvoHarvestWeb.Schema
    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: EvoHarvestWeb.Schema,
      interface: :simple
  end

end
