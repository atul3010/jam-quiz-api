class DropUserGrades < ActiveRecord::Migration[5.0]
  def change
    drop_table :user_grades
  end
end
