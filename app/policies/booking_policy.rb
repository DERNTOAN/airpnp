class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve

      # Booking
      # current_user => user
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    # user
    # record
    if @record.bathroom.user == user || @record.user == user
      true
    end
  end
end
