class PurchasesController < ApplicationController
  def new
  end
  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.save

    redirect_to purchase_path(@purchase)

  end
  def show
    @purchase = Purchase.find(params[:id])
    @buyer = @purchase.user.profile.username
    @seller = @purchase.bicycle.user.profile.username
    @bicycle = @purchase.bicycle.title
    @delivery_address = Address.find(@purchase[:delivery_address]).address
    @price = @purchase.bicycle.price
  end

  def index
  end
  private 

  def purchase_params 
    params.require(:purchase).permit(:user_id, :delivery_address, :bicycle_id, :pickup)
  

  end
end
