class LedgersController < ApplicationController

  before_action :set_ledger

  # /ledgers/1/buy/1
  def buy
    price = @ledger.ticker.price
    @ledger.orders.create(price: price, amount: ledger_params[:amount])

    respond_to do |format|
      format.html { redirect_to user_url(@ledger.user), notice: "Buy order created." }
      format.json { head :no_content }
    end
  end

  private

  def set_ledger
    @ledger = Ledger.find(params[:ledger_id])
  end

  def ledger_params
    params.permit(:amount)    
  end
end
