class Ticker < ApplicationRecord
    def formated_price
        "%.2f" % (self.price.to_f / (10**self.precision))
    end
end
