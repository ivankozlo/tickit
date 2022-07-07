class AddDueonToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :due_on, :date
  end
end
