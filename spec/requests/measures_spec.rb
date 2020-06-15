require 'rails_helper'

RSpec.describe MeasuresController, type: :controller do


it 'get record succesfuly' do
       get :index
	expect(JSON.parse(response.body)).to eq('o')
end

end
