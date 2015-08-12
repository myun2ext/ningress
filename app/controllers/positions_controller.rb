class PositionsController < AuthenticateController
  # GET /position.json
  def show
  end

  # PATCH/PUT /position
  def update
    procedure = PositionUpdateProcedure.new(current_user, params)
    procedure.do
    redirect_to '/'
  end
end
