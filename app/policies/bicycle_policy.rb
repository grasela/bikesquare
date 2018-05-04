class BicyclePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user_id: user.id)
      end
    end
  end

  def update?
    if user.present?
      user.admin? || record.user == user
    else 
    end   
  end
  def edit?
    user.admin? || record.user == user
  end

  def create?
    user.admin? || record.user == user
  end

  def new?

  end

  def destroy?
    user.admin? || record.user == user

  end
end
