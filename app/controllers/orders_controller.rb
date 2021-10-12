class OrdersController < ApplicationController
  before_action :set_ledger #, only: %i[ show edit update destroy ]

  # POST /ledgers/1/orders
  def create
  end

  # DELETE /ledgers/1/orders/1
  def destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_ledger
    @ledger = Ledger.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  # def order_params
    # params.require(:ledger_id).permit(:ticker, :description, :url, :price, :precision)
  # end

end
