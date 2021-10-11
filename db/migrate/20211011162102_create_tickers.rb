class CreateTickers < ActiveRecord::Migration[6.1]
  def change
    create_table :tickers do |t|
      t.string :ticker
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
