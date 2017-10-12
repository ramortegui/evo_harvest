defmodule EvoHarvest.Repo.Entry do
  use Ecto.Schema
  import Ecto.Changeset
  alias EvoHarvest.Repo.Entry


  schema "entries" do
    field :project_id, :id
    field :task_id, :id
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Entry{} = entry, attrs) do
    entry
    |> cast(attrs, [])
    |> validate_required([])
  end
end
