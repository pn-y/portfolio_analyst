defmodule PortfolioAnalyst.Repo.Migrations.CreateCompanies do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add :name, :string
      add :symbol, :string
      add :beta, :decimal
      add :industry, :string
      add :sector, :string
      add :image, :string
      add :price, :float
      add :change, :float
      add :change_percentage, :float
      add :exchange, :string

      timestamps()
    end

  end
end
