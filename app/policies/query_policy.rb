class QueryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
  def new?
    

  end
end
