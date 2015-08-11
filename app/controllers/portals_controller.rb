class PortalsController < ApplicationController
  # GET /portals
  def index
    @portals = Portal.all
  end

  # GET /portals/1
  def show
    @portal = Portal.find(params[:id])
  end
end
