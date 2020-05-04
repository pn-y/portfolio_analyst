defmodule PortfolioAnalyst.AccountFactory do
  defmacro __using__(_opts) do
    quote do
      def account_factory do
        %PortfolioAnalyst.Account{
          email: sequence(:email, &"email-#{&1}@example.com"),
        }
      end
    end
  end
end
