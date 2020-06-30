require_relative '../rails_helper'

RSpec.describe MeasuresController, type: :controller do
  it 'check for invalid record' do
    get :index, params: { bodypart_id: 'crazychest' }
    expect(JSON(response.body)).to match([])
  end
end
