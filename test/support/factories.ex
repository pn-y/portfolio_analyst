defmodule PortfolioAnalyst.Factory do
  use ExMachina.Ecto, repo: PortfolioAnalyst.Repo
  use PortfolioAnalyst.AccountFactory
  use PortfolioAnalyst.PortfolioFactory
  use PortfolioAnalyst.ImportFactory
end
