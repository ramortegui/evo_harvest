defmodule EvoHarvest.Repo.Migrations.AddHoursToEntriesTable do
  use Ecto.Migration

  def change do
    alter table(:entries) do
      add :hours, :float
    end
  end
end
