defmodule PortfolioAnalyst.Repo.Migrations.CreatePortfolios do
  use Ecto.Migration

  def change do
    create table(:portfolios) do
      add :name, :string
      add :account_id, references(:accounts, on_delete: :delete_all)

      timestamps()
    end

    create index(:portfolios, [:account_id])
  end
end
