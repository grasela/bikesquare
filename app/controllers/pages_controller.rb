class PagesController < ApplicationController
  def home
    @bicycles = Bicycle.all 
  end
end
