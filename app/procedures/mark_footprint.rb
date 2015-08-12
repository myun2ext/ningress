class MarkFootprint
  def self.do(user, params)
    f = Footprint.first_or_initialize(user: user)
    f.update!(params.permit :latitude, :longitude)
  end
end
