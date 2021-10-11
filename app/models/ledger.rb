class Ledger < ApplicationRecord
  belongs_to :user
  belongs_to :ticker
  has_many :orders, dependent: :destroy

  def balance
    self.orders.map {|o| o.amount }.sum
  end

  def total_value
    self.orders.map {|o| o.amount * o.price  }.sum
  end

  def average_price
    self.total_value.to_f / self.balance
  end
end
