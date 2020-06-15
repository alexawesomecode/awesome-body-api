class BodypartsController < ApplicationController

  # GET /bodyparts
  def index
    @bodyparts = Bodypart.all

    render json: @bodyparts
  end


  def show

@bodypart = Bodypart.find(params[:id])
render json: @bodypart
end
  # GET /bodyparts/1

end
