class Measure < ApplicationRecord
  validates :bodypart_id, presence: true
  validates :value, presence: true
end
