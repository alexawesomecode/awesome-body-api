require_relative '../rails_helper'

RSpec.describe BodypartsController, type: :controller do


  it 'GET INDEX returns a success GET response' do
    get :index
    expect(response).to have_http_status(200)
  end

  it 'creating new records and getting all index records succesfuly' do

    prevTotal =  Bodypart.all.size  
    create(:bodypart, name: 'biceps', target: 120) 
    create(:bodypart, name: 'triceps', target: 122) 
    total = prevTotal + 2
    get :index
    expect(JSON(response.body).size).to eq(total)
  end
end
