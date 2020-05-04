defmodule PortfolioAnalyst.PortfolioFactory do
  defmacro __using__(_opts) do
    quote do
      def portfolio_factory do
        %PortfolioAnalyst.Portfolio{
          name: sequence(:name, &"portfolio#{&1}"),
        }
      end
    end
  end
end
