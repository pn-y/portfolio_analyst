defmodule PortfolioAnalyst.Company do
  use Ecto.Schema
  import Ecto.Changeset

  schema "companies" do
    field(:beta, :decimal)
    field(:change, :float)
    field(:change_percentage, :float)
    field(:exchange, :string)
    field(:image, :string)
    field(:industry, :string)
    field(:name, :string)
    field(:price, :float)
    field(:sector, :string)
    field(:symbol, :string)

    timestamps()
  end

  @doc false
  def changeset(company, attrs) do
    company
    |> cast(attrs, [
      :name,
      :symbol,
      :beta,
      :industry,
      :sector,
      :image,
      :exchange,
      :price,
      :change,
      :change_percentage,
      :exchange
    ])
    |> validate_required([
      :name,
      :symbol,
      :beta,
      :industry,
      :sector,
      :image,
      :exchange,
      :price,
      :change,
      :change_percentage,
      :exchange
    ])
  end
end
