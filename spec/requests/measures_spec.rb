require 'rails_helper'

RSpec.describe MeasuresController, type: :controller do
  it 'get right records and  associate to id succesfuly' do
    Bodypart.create(name: 'chest', target: 222)
    Measure.create(bodypart_id: 1, value: 22, name: 'chest')
    Measure.create(bodypart_id: 1, value: 222)
    Measure.create(bodypart_id: 1, value: 233)

    get :index, params: { bodypart_id: 'chest' }
    expect(JSON(response.body).size).to eq(3)
    expect(JSON(response.body).first['name']).to match('chest')
  end
end
