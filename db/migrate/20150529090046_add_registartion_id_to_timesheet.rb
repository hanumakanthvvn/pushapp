class AddRegistartionIdToTimesheet < ActiveRecord::Migration
  def change
   add_column :timesheets, :registration_id, :integer
  end
end
