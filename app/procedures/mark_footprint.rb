class MarkFootprint
  attr_reader :user, :params

  def initialize(user, params)
    @user = user
    @params = params
  end

  def self.do(user, params)
    f = new(user,params)
    f.do!
  end

  def do!
    footprint.update!(params.permit :latitude, :longitude, :location)
    footprint.log!
  end

  private
  def footprint
    Footprint.first_or_initialize(user: user)
  end
end
