class ApplicationController < ActionController::API

def route_not_found
	render json: {"msg": "not found"}
  end
end
