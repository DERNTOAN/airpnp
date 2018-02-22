class ReviewPolicy < ApplicationPolicy
  # record = current instance of review
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end
end
