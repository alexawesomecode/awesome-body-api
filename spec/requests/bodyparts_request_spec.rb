require 'rails_helper'

RSpec.describe BodypartsController, type: :controller do

it 'GET INDEX returns a success GET response' do
	get :index
	print response
       expect(response).to have_http_status(200)
end

it 'get record succesfuly' do
       get :show, params: {:bodypart_id => 1}
       expect(response).not_to be_empty
       expect(response.bodypart_id).to contain_exactly('1')
end

end
