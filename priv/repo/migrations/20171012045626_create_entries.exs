defmodule EvoHarvest.Repo.Migrations.CreateEntries do
  use Ecto.Migration

  def change do
    create table(:entries) do
      add :project_id, references(:projects, on_delete: :nothing)
      add :task_id, references(:tasks, on_delete: :nothing)
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:entries, [:project_id])
    create index(:entries, [:task_id])
    create index(:entries, [:user_id])
  end
end
