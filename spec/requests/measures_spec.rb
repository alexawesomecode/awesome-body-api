require 'rails_helper'

RSpec.describe MeasuresController, type: :controller do

 before(:each) {

 create_parent = Bodypart.create(name:"chest", target:222)
 create_measure = Measure.create(bodypart_id:1, value:22, name:'chest')
 create_measure = Measure.create(bodypart_id:1, value:222)
 create_measure = Measure.create(bodypart_id:1, value:233)      
 }


it 'get all measures associated to id succesfuly' do
       
       get :index, params: {bodypart_id:1}
       expect(JSON.parse(response.body).size).to eq(3)
       expect(JSON(response.body).first['name']).to include('chest')
end



end

