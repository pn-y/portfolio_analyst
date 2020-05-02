defmodule PortfolioAnalyst.ImportFiles do
  use Ecto.Schema
  use Arc.Ecto.Schema
  import Ecto.Changeset

  schema "import_files" do
    field :attachment, PortfolioAnalyst.ImportFile.Type
    field :portfolio_id, :id

    timestamps()
  end

  @doc false
  def changeset(import_files, attrs) do
    import_files
    |> cast(attrs, [:attachment])
    |> validate_required([:attachment])
  end
end
