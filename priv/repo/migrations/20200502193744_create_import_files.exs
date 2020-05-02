defmodule PortfolioAnalyst.Repo.Migrations.CreateImportFiles do
  use Ecto.Migration

  def change do
    create table(:import_files) do
      add :attachment, :string
      add :portfolio_id, references(:portfolios, on_delete: :delete_all)

      timestamps()
    end

    create index(:import_files, [:portfolio_id])
  end
end
