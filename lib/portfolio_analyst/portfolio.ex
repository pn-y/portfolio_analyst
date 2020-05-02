defmodule PortfolioAnalyst.Portfolio do
  use Ecto.Schema
  import Ecto.Changeset

  schema "portfolios" do
    field(:name, :string)
    field(:account_id, :id)

    timestamps()
  end

  @doc false
  def changeset(portfolio, attrs) do
    portfolio
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
