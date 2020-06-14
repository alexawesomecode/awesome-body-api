class BodypartsController < ApplicationController

  # GET /bodyparts
  def index
    @bodyparts = Bodypart.all

    render json: @bodyparts
  end

  # GET /bodyparts/1

end
