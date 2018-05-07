class PurchasePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end



  end
end
