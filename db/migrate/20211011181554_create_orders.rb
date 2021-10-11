class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :amount
      t.integer :price
      t.references :ledger, null: false, foreign_key: true

      t.timestamps
    end
  end
end
