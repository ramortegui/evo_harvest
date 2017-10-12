defmodule EvoHarvest.Repo.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias EvoHarvest.Repo.Task


  schema "tasks" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Task{} = task, attrs) do
    task
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
