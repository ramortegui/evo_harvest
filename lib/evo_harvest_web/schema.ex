defmodule EvoHarvestWeb.Schema do
  use Absinthe.Schema

  query do
  end

  object :company do
    field :id, :id
    field :name, :string
  end
end
