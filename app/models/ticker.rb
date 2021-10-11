require 'open-uri'
require 'json'

class Ticker < ApplicationRecord
    has_many :ledger, dependent: :destroy 

    def formatted_price
        if self.price.nil? || self.precision.nil?
            0
        else
            "%.2f" % (self.price.to_f / (10**self.precision))
        end
    end

    def fetch_price!
        response = URI.open(self.url).read
        json_respose = JSON.parse(response)
        text_amount = json_respose["data"]["amount"]
        self.set_amount!(text_amount)
        true
    end

    def set_amount!(amount)
        val = amount.to_f * (10 ** self.precision)
        self.price = val.to_i
        self.save!
    end
end
