class CreateTimesheets < ActiveRecord::Migration
  def change
    create_table :timesheets do |t|
      t.text :description
      t.datetime :duration

      t.timestamps
    end
  end
end
