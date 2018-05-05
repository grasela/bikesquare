class ProfilePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user_id: user.id)
      end
    end
  end

  def index?
  end

  def update?
    user.nil? || record.user != user
  end   

  def edit?
    user.admin? || record.user == user
  end

  def create?
    user.nil? || record.user != user
  end

  def new?

  end

  def destroy?
    user.admin? || record.user == user

  end
end
