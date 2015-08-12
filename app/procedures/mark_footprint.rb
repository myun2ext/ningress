class MarkFootprint
  def self.do(user, params)
    f = Footprint.find_by(user: user)
    f.update(params)
  end
end
