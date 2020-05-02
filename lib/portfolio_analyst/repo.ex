defmodule PortfolioAnalyst.Repo do
  use Ecto.Repo,
    otp_app: :portfolio_analyst,
    adapter: Ecto.Adapters.Postgres
end
