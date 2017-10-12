defmodule EvoHarvest.Repo.Company do
  use Ecto.Schema
  import Ecto.Changeset
  alias EvoHarvest.Repo.Company


  schema "companies" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Company{} = company, attrs) do
    company
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
