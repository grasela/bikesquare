class PurchasesController < ApplicationController
  def new
  end
  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.save!
    redirect_to purchase_path(@purchase)
  end
  def show
    @purchase = Purchase.find(params[:id])
    @buyer = @purchase.user
    @seller = @purchase.bicycle.user
    @bicycle = @purchase.bicycle
    @delivery_address = Address.find(@purchase[:delivery_address]).address
    @price = @purchase.bicycle.price
    @amount = @price * 100
  end

  def charge
    @purchase = Purchase.find(params[:id])
    @amount = @purchase.bicycle.price * 100
    if current_user.stripe_id.blank?
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )
      # set user stripe id to the custome id retrieved from stripe
      current_user.stripe_id = customer.id
      current_user.save! #bad, doesn't handle error
    end

    charge = Stripe::Charge.create(
      :customer    => current_user.stripe_id,
      :amount      => @amount.to_i,
      :description => 'Bike Square',
      :currency    => 'aud'
    )

    #update purchase 
    @purchase.payed_at = Time.now
    @purchase.save!
    flash[:notice] = "Payment done!"
    redirect_to purchase_path(@purchase), fallback_location:  root_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end

def index
end
private 

def purchase_params 
  params.require(:purchase).permit(:user_id, :delivery_address, :bicycle_id, :pickup)


end
