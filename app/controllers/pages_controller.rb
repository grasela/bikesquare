class PagesController < ApplicationController
  before_action :check_profile?
  before_action :check_available_bicycles?

  def home
    @purchases = Purchase.all
    bikes = Bicycle.all
    @bicycles = []
    bikes.each do |b|
      unless Purchase.find_by bicycle_id: b 
        @bicycles.push b 
      end
    end
### search bar ###
    if params[:search]
      @bicycles = Bicycle.search(params[:search]).order("created_at DESC") 
    else
      @bicycles = @bicycles
    end
  end
end


def contact_email
  user = current_user
  ContactMailer.send_contact_email(user: user, params: email_params).deliver_now

  redirect_to root_path
end

private 
def email_params
  params.require(:contact).permit(:name, :message)

end
