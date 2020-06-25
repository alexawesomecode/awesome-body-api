require_relative '../rails_helper'

RSpec.describe BodypartsController, type: :controller do
  let(:a) { Bodypart.create(name: 'biceps', target: 12) }
  let(:b) { Bodypart.create(name: 'triceps', target: 122) }
  let(:total) { Bodypart.all }

  it 'GET INDEX returns a success GET response' do
    get :index
    expect(response).to have_http_status(200)
  end

  it 'get all index records succesfuly' do
    get :index
    expect(JSON(response.body).size).to eq(2)
  end
end
