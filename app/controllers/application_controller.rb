class ApplicationController < ActionController::API
  def route_not_found
    @resp = { msg: 'not found' }
    render json: @resp
  end
end
