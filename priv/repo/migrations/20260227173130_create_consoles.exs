defmodule Shop.Repo.Migrations.CreateConsoles do
  use Ecto.Migration

  def change do
    create table(:consoles) do
      add :name, :string
      add :price, :float

      timestamps(type: :utc_datetime)
    end
  end
end
