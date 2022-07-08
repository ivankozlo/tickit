class RemoveLaneFromTickets < ActiveRecord::Migration[7.0]
  def change
    remove_reference :tickets, :lane
  end
end
