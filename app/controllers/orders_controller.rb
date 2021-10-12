class OrdersController < ApplicationController
  before_action :set_ledger #, only: %i[ show edit update destroy ]

  # POST /ledgers/1/orders
  def create
    @ledger.orders.create(order_params)
    respond_to do |format|
      format.html { redirect_to user_url(@ledger.user), notice: "Order was created." }
      format.json { head :no_content }
    end
  end

  # DELETE /ledgers/1/orders/1
  def destroy
    @ledger.orders.find(params[:id]).destroy
  end

  private

  def set_ledger
    @ledger = Ledger.find(params[:ledger_id])
  end

  def order_params
    params.require(:order).permit(:ledger_id, :amount, :price)
  end

end
