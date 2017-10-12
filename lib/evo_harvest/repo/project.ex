defmodule EvoHarvest.Repo.Project do
  use Ecto.Schema
  import Ecto.Changeset
  alias EvoHarvest.Repo.Project


  schema "projects" do
    field :name, :string
    field :company_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Project{} = project, attrs) do
    project
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
