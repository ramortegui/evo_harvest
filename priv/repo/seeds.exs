# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     EvoHarvest.Repo.insert!(%EvoHarvest.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

# Add Companies

EvoHarvest.Repo.insert!(%EvoHarvest.Repo.Company{name: "Company 1"})
EvoHarvest.Repo.insert!(%EvoHarvest.Repo.Company{name: "Company 2"})
EvoHarvest.Repo.insert!(%EvoHarvest.Repo.Company{name: "Company 3"})
