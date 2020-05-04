defmodule PortfolioAnalyst.ImportFactory do
  defmacro __using__(_opts) do
    quote do
      def import_factory do
        %PortfolioAnalyst.Import{
          state: "ready_to_process",
          import_file: %{ path: "test/fixtures/statement.csv", filename: 'statement.csv' }
        }
      end
    end
  end
end
