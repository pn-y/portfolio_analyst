defmodule PortfolioAnalytic.Repo do
  use Ecto.Repo,
    otp_app: :portfolio_analytic,
    adapter: Ecto.Adapters.Postgres
end
