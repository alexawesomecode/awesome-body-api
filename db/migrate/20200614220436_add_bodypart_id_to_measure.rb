class AddBodypartIdToMeasure < ActiveRecord::Migration[6.0]
  def change
    add_column :measures, :bodypart_id, :integer
  end
end
