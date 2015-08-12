class PositionUpdateProcedure
  def initialize(user, params)
    @user = user
    @params = params
  end

  def do
    MarkFootprint.do(@user, @params)
  end
end
