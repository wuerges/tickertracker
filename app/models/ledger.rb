class Ledger < ApplicationRecord
  belongs_to :user
  belongs_to :ticker
  has_many :orders, dependent: :destroy
end
