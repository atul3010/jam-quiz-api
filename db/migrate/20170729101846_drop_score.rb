class DropScore < ActiveRecord::Migration[5.0]
  def change
    drop_table :scores
  end
end
