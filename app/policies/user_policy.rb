class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    if @record.id == user.id
      true
    end
  end

  def update?
    true
  end

  def update_location?
    true
  end
end
