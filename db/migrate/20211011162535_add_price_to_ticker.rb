class AddPriceToTicker < ActiveRecord::Migration[6.1]
  def change
    add_column :tickers, :price, :integer
    add_column :tickers, :precision, :integer
  end
end
