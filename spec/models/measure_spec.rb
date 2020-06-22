require 'rails_helper'

RSpec.describe Measure, type: :model do
  it 'requires presence of bodypart_id and value' do
    record = { value: 2 }
    measure = Measure.new(record).save
    expect(measure).to eq(false)

    record2 = { bodypart_id: 1, name: 'biceps measure' }
    measure =  Measure.new(record2).save
    expect(measure).to eq(false)
  end

  it 'successful create records with value and bodypart' do
    records = Measure.all.size
    Measure.create(bodypart_id: 2, value: 12)
    result = records + 1
    all_records = Measure.all.size
    expect(result).to eq(all_records)
  end
end
