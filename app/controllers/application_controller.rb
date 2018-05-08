class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def check_profile?
    if user_signed_in? && current_user.profile.nil?
      redirect_to new_profile_path
    end
  end

  def check_available_bicycles?
    @purchases = Purchase.all
    @purchases.each do |p|
      if p.created_at < Time.now - 60.seconds && p.payed_at.nil?
        p.destroy
      end
    end
  end

  def check_purchase_expiry(purchase)

    if purchase.created_at < Time.now - 10.seconds && purchase.payed_at.nil?
      purchase.destroy
    end
  end


end




def after_sign_up_path_for(resource)
  new_profile_path
end
def after_sign_in_path_for(resource)
  if current_user.profile.nil?
    new_profile_path 
  else 
    root_path
  end
end
def address
  [house_number, street_number, street, suburb, city, state, postal_code, country_code].compact.join(' ')
end


private

def user_not_authorized
  flash[:alert] = "You are not authorized to perform this action."
  redirect_to(request.referrer || root_path)
end

