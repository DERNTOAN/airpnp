class Api::V1::BathroomsController < Api::V1::BaseController
  def index
    @bathrooms = policy_scope(Bathroom)
    @bathrooms = @bathrooms.select do |bathroom|
      test(bathroom)
    end
  end

  def test(bathroom)
    arr = []
    bathroom_params.each do |key, value|
      p key
      par = bathroom.price <= value.to_i if key == "price"
      par = bathroom[key] == (value == "1") if %w(handicapped wipes baby bidet).include? key
      par = bathroom.style == value if key == "style"
      arr << par
    end
    arr.all?
  end

  def bathroom_params
    params.permit(:price, :handicapped, :style, :toilet_paper, :wipes, :baby, :bidet)
  end

end
