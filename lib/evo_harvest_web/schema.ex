defmodule EvoHarvestWeb.Schema do
  use Absinthe.Schema
  alias EvoHarvest.Repo;
  alis 

  query do
    field :companies, list_of(:company)
    resolve fn _,_,_ -> { :ok, Repo.all(Repo.Company) }
  end

  object :company do
    field :id, :id
    field :name, :string
  end
end
