defmodule Api.Repo.Migrations.CreateState do
  use Ecto.Migration

  def up do
    create table(:states) do
      add :name, :string, null: false
      add :capital, :string, null: false
      add :country, :string, null: false
      add :geopoint, :string, null: false
      timestamps()
    end

    create unique_index(:states, [:name])
  end

  def down do
    drop_if_exists table(:states) 
  end
end
