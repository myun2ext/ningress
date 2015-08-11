class ProfilesController < AuthenticateController
  before_action :set_profile

  # GET /profiles/1
  def show
  end

  # GET /profiles/1/edit
  def edit
  end

  # PATCH/PUT /profiles/1
  def update
    respond_to do |format|
      if @profile.update(profile_edit_params)
        format.html { redirect_to '/profile', notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @user = @profile = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_edit_params
      params.require(:user).permit(:name)
    end
end
