class AddGradeIdInUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :grade_id, :integer
  end
end
