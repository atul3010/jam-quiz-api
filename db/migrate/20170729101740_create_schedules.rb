class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.references :user, foreign_key: true
      t.references :exam, foreign_key: true

      t.timestamps
    end
  end
end
