require 'rails_helper'


RSpec.describe BodypartsController, type: :controller do


it 'GET INDEX returns a success GET response' do
	get :index
       expect(response).to have_http_status(200)
end

it 'get all index records succesfuly' do
       record = Bodypart.create(name:"biceps", target:12)
       record = Bodypart.create(name:"triceps", target:122)
       get  :index
       expect(JSON(response.body).size).to eq(2)
end

      
      
it 'returns code 401 with invalid request' do
        get :show
        expect(response).to have_http_status(401)
      end


end


