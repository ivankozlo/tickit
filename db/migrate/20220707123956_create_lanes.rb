class CreateLanes < ActiveRecord::Migration[7.0]
  def change
    create_table :lanes do |t|
      t.string :title

      t.timestamps
    end
  end
end
