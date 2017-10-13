defmodule EvoHarvestWeb.Schema do
  use Absinthe.Schema
  alias EvoHarvest.Repo

  query do
    @desc "The list of companies"
    field :companies, list_of(:company) do
      resolve fn _,_,_ ->
          { :ok, Repo.all(Repo.Company) }
      end
    end
  end

  @desc "Company object"
  object :company do
    field :id, :id
    field :name, :string
  end
end
