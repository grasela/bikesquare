class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
  def show?
    user == nil?  || record.reviewer == user || user.admin?
  
  end

  def index?
    user == nil? || user.admin?

  end 
  def new?

  end 
end
