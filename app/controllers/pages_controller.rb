class PagesController < ApplicationController
  before_action :check_profile?
  def home
    @bicycles = Bicycle.all 
  end
end
