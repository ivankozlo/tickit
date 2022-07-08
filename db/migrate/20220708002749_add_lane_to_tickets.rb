class AddLaneToTickets < ActiveRecord::Migration[7.0]
  def change
    add_reference :tickets, :lane, foreign_key: true
  end
end
