class Api::V1::BathroomsController < Api::V1::BaseController
  def index
    @bathrooms = policy_scope(Bathroom)
  end
end
