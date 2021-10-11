class User < ApplicationRecord
    has_many :ledgers, dependent: :destroy 
end
