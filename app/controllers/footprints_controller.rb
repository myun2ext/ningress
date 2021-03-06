class FootprintsController < AuthenticateController
  before_action :set_footprint, only: [:show, :edit, :update, :destroy]

  # GET /footprints
  # GET /footprints.json
  def index
    @footprints = Footprint.all
  end

  # GET /footprints/1
  # GET /footprints/1.json
  def show
  end

  # POST /footprints.json
  def create
    if MarkFootprint.do(current_user, footprint_params)
      format.json { render :show, status: :created, location: @footprint }
    else
      format.json { render json: @footprint.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /footprints/1
  # PATCH/PUT /footprints/1.json
  def update
    respond_to do |format|
      if @footprint.update(footprint_params)
        format.html { redirect_to @footprint, notice: 'Footprint was successfully updated.' }
        format.json { render :show, status: :ok, location: @footprint }
      else
        format.html { render :edit }
        format.json { render json: @footprint.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def footprint_params
      params.require(:footprint).permit(:latitude, :longitude)
    end
end
