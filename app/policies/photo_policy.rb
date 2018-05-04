class PhotoPolicy < ApplicationPolicy
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
    user.admin?
  end

  def show?
    user.admin? || record.bicycle.user_id == user.id
    
  end 

  def update?
    user.admin? || record.bicycle.user_id == user.id
  end

  def edit?
    user.admin? || record.bicycle.user_id == user.id
  end

  def create?
    user.admin? || record.bicycle.user_id == user.id
  end

  def new?
    user.admin? || record.bicycle.user_id == user.id

  end

  def destroy?
    user.admin? || record.bicycle.user_id == user.id

  end

end
