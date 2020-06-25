require_relative '../rails_helper'

RSpec.describe MeasuresController, type: :controller do

    let(:bodypart) { create(:progress_record, target:100)}

  it 'get total target of record' do
    
     expect(bodypart.target).to eq(100)
  end

    it 'get correct progress toward goal' do
     
    record1 = create(:measure, bodypart_id: bodypart.id, name: 'head', value:5)
    record2 = create(:measure, bodypart_id: bodypart.id, name: 'head', value:10)
    record3 = create(:measure, bodypart_id: bodypart.id, name: 'head', value:15)
    record3 = create(:measure, bodypart_id: bodypart.id, name: 'head', value:10)

    get :progress, params: { bodypart_id: bodypart.id}
    expect(JSON(response.body)).to eq(40)
    
  end


end
