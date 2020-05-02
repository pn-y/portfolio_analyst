defmodule PortfolioAnalyticWeb.PageController do
  use PortfolioAnalyticWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
