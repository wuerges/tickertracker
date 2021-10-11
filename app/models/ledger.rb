class Ledger < ApplicationRecord
  belongs_to :user
  belongs_to :ticker
  has_many :orders, dependent: :destroy

  def balance
    self.orders.map {|o| o.amount }.sum
  end
end
