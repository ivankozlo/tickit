class AddPositionToLanes < ActiveRecord::Migration[7.0]
  def change
    add_column :lanes, :position, :integer
  end
end
