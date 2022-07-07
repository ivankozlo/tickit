class AddLaneToTickets < ActiveRecord::Migration[7.0]
  def change
    add_reference :tickets, :lane, index: true 
  end
end
