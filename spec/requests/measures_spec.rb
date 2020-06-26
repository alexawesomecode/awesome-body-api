require_relative '../rails_helper'

RSpec.describe MeasuresController, type: :controller do
 
  it 'creates records through post' do 

    bodypart = create(:bodypart, name: 'knee', target: 100)
    record = create(:measure, bodypart_id: bodypart.id, name: 'knee', value: 1)
    
    get :index, params: { bodypart_id: 'knee' }
    expect(JSON(response.body).size).to eq(1)
    #measure = create(:new_measure, bodypart_id: bodypart.id)
    #post :create, params: { measure: { name: 'knee', value:9, date: '06-07-2020'} }
    post :create, params: { bodypart_id: 'knee', measure: { name: 'knee', value:9, date: '06-07-2020', bodypart_id: bodypart.id}}

    expect(JSON(response.body)).to include(/created_at/)
    get :index, params: { bodypart_id: 'knee' }
    expect(JSON(response.body).size).to eq(2)
    
  end

  it 'get right records and  associate to id succesfuly' do
    bodypart = create(:bodypart, name: 'chest', target: 222)
    part1 = create(:measure, bodypart_id: bodypart.id, value: 22, name: 'chest')
    part2 = create(:measure, bodypart_id: bodypart.id, value: 222, name: 'chest')
    part3 = create(:measure, bodypart_id: bodypart.id, value: 233, name: 'chest')

    get :index, params: { bodypart_id: 'chest' }
    expect(JSON(response.body).size).to eq(3)
    expect(JSON(response.body).first['name']).to match('chest')
  end
end
