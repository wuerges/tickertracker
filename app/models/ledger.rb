class Ledger < ApplicationRecord
  belongs_to :user
  belongs_to :ticker
end
