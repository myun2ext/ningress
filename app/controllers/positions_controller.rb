class PositionsController < AuthenticateController
  # GET /position.json
  def show
  end

  # PATCH/PUT /position.json
  def update
    procedure = PositionUpdateProcedure.new(current_user, params)
    if procedure.do
      format.json { render :show, status: :ok, location: @position }
    else
      format.json { render json: @position.errors, status: :unprocessable_entity }
    end
  end
end