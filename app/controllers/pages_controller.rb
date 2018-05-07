class PagesController < ApplicationController
  before_action :check_profile?
  def home
    bikes = Bicycle.all
    @bicycles = []
    bikes.each do |b|
      unless Purchase.find_by bicycle_id: b 
        @bicycles.push b 
      end
    end







    
  end
end
