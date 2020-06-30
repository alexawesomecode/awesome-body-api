require_relative '../rails_helper'

RSpec.describe Measure, type: :model do
  it 'requires presence of bodypart_id and value' do
    record = build(:measure)
    record.value = nil
    expect(record.save).to eq(false)
    record2 = build(:measure, value: 2, bodypart_id: 1)
    expect(record2.save).to eq(true)
  end

  it 'successful create records with value and bodypart' do
    all_records = Measure.all.size
    create(:measure, bodypart_id: 2, value: 12)
    create(:measure, bodypart_id: 1, value: 1)
    next_records = all_records + 2
    expect(Measure.all.size).to eq(next_records)
  end
end
